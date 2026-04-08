# global
variable "location" {
  default     = "australiaeast"
  type        = string
  description = "The Azure region to deploy into"
}

# resource_group
variable "rg_name" {
  default     = "rg-global360-task"
  type        = string
  description = "Name of the resouce group"
}

# network security group
variable "nsg_name" {
  default     = "nsg-global360-task"
  type        = string
  description = "Name of the network security group group"
}

# virtual group
variable "vnet_name" {
  default     = "rg-global360-task"
  type        = string
  description = "Name of the virtual group group"
}

variable "subnet_name" {
  default     = "vnet-global360-task"
  type        = string
  description = "Name of the subnet network"
}

variable "address_space" {
  default     = ["10.0.0.0/16"]
  type        = list
  description = "The address space that is used the virtual network. You can supply more than one address space."
}

variable "address_prefixes" {
  default     = ["10.0.1.0/24"]
  type        = list
  description = "The address prefixes to use for the subnet"
}