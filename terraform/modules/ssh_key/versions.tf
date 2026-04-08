terraform {
  required_providers {
    azurerm = {
      version = "~> 4.67.0"
    }
    azapi = {
      source  = "azure/azapi"
      version = "~> 2.9.0"
    }
    random = {
      version = "~> 3.8.1"
    }
  }

  required_version = "~> 1.14.8"
}