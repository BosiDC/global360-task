resource "azurerm_linux_virtual_machine_scale_set" "this" {
  name                = var.name
  resource_group_name = var.rg_name
  location            = var.location
  sku                 = "Standard_F2"
  instances           = var.instances
  admin_username      = "adminuser"

  admin_ssh_key {
    username   = "adminuser"
    public_key = ""
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

  os_disk {
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }

  network_interface {
    name    = var.nic_name
    primary = true

    ip_configuration {
      name      = "internal"
      primary   = true
      subnet_id = var.subnet_id
    }
  }

  custom_data = ""
}