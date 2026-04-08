# resource group
module "resource_group" {
  source = "../../modules/resource_group"

  name     = var.rg_name
  location = var.location
}

# network security group
module "network_security_group" {
  source = "../../modules/network_security_group"

  name                = var.nsg_name
  location            = var.location
  resource_group_name = module.resource_group.name
}

# virtual network
module "virtual_network" {
  source = "../../modules/virtual_network"

  name                = var.vnet_name
  resource_group_name = module.resource_group.name
  location            = var.location
  address_space       = var.address_space

  subnet_name         = var.subnet_name
  address_prefixes    = var.address_prefixes
  security_group      = module.network_security_group.id
}

# ssh key
module "ssh_key" {
  source    = "../../modules/ssh_key"

  parent_id = module.resource_group.id
  location  = var.location
}

# load balancer
module "load_balancer" {
  source = "../../modules/load_balancer"

  pip_name            = var.pip_name
  location            = var.location
  resource_group_name = module.resource_group.name
  lbe_name            = var.lbe_name

  lb_backend_address_pool_name = var.lb_backend_address_pool_name
}

# virtual machine scale set
module "linux_vm_scale_set" {
  source = "../../modules/linux_vm_scale_set"

  name       = var.vmss_name
  rg_name    = module.resource_group.name
  location   = var.location
  instances  = var.instances
  public_key = module.ssh_key.key_data

  # network_interface
  load_balancer_backend_address_pool_ids = [module.load_balancer.backend_address_pool_id]
  subnet_id                              = one(module.virtual_network.subnet_id)

  # custom data
  
}