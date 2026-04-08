variable "name" {
  default     = "snet-global360-task"
  type        = string
  description = "Name of the subnet"
}

variable "virtual_network_name" {
  default     = "australiaeast"
  type        = string
  description = "The name of the virtual network to which to attach the subnet"
}

variable "resource_group_name" {
  default     = "rg-global360-task"
  type        = string
  description = "The name of the resource group in which to create the virtual network. Changing this forces a new resource to be created"
}

variable "address_prefixes" {
  default     = ["10.0.1.0/24"]
  type        = list
  description = "The address prefixes to use for the subnet"
}