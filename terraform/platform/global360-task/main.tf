# resource group
module "resource_group" {
  source = "../../modules/resource_group"

  name     = var.rg_name
  location = var.location
}

# virtual network
module "virtual_network" {
  source = "../../modules/virtual_network"

  name                = var.vnet_name
  resource_group_name = module.resource_group.id
  location            = var.location
  address_space       = var.address_space

  subnet_name         = var.subnet_name
  address_prefixes    = var.address_prefixes
}

