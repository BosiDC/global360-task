resource "azurerm_linux_virtual_machine_scale_set" "this" {
  name                = var.name
  resource_group_name = var.rg_name
  location            = var.location
  sku                 = "Standard_B2ls_v2"
  instances           = var.instances
  admin_username      = "adminuser"
  zones               = ["2"]

  admin_ssh_key {
    username   = "adminuser"
    public_key = var.public_key
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "server"
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
      name                                   = "internal"
      load_balancer_backend_address_pool_ids = var.load_balancer_backend_address_pool_ids
      primary                                = true
      subnet_id                              = var.subnet_id
    }
  }

  custom_data = var.custom_data

  tags = var.tags
}

resource "azurerm_monitor_autoscale_setting" "vmss_autoscale" {
  name                = "vmss-autoscale"
  location            = var.location
  resource_group_name = var.rg_name
  target_resource_id  = azurerm_linux_virtual_machine_scale_set.this.id

  profile {
    name = "vmss-fixed-2"

    capacity {
      minimum = 2
      maximum = 2
      default = 2
    }
  }
}