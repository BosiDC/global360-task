# global vars
location = "australiaeast"

# tags
tags = {
  environemnt = "dev"
  cost_center = "12345"
  region      = "australiaeast"
  application = "global360-task"
}

# resource_group
rg_name = "rg-global360-task"

# network security group
nsg_name = "nsg-global360-task"

# virtual network
vnet_name        = "vnet-global360-task" 
address_space    = ["10.0.0.0/16"]
subnet_name      = "snet-global360-task"
address_prefixes = ["10.0.0.0/24"]

# load balancer
lbe_name = "lbe-global360-task"
pip_name = "pip-global360-task"

lb_backend_address_pool_name = "backend-address-pool-global360-task"

# linux vm scale set
vmss_name = "vmss-global360-task"