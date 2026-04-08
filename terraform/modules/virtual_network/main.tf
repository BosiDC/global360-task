resource "azurerm_virtual_network" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.address_space

  subnet {
    name             = var.subnet_name
    address_prefixes = var.address_prefixes
    security_group   = var.security_group
  }
}