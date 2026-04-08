variable "name" {
  default     = "vnet-global360-task"
  type        = string
  description = "Name of the virtual network"
}

variable "location" {
  default     = "australiaeast"
  type        = string
  description = "The Azure region to deploy into"
}

variable "resource_group_name" {
  default     = "rg-global360-task"
  type        = string
  description = "The name of the resource group in which to create the virtual network. Changing this forces a new resource to be created"
}

variable "address_space" {
  default     = ["10.0.0.0/16"]
  type        = list
  description = "The address space that is used the virtual network. You can supply more than one address space"
}

variable "subnet_name" {
  default     = "snet-global360-task"
  type        = string
  description = "Name of the subnet network"
}

variable "address_prefixes" {
  default     = ["10.0.1.0/24"]
  type        = list
  description = "The address prefixes to use for the subnet"
}

variable "security_group" {
  type        = string
  description = "ID of the security group"
}