variable "pip_name" {
  default     = "pip-global360-task"
  type        = string
  description = "Name of the load balancer"
}

variable "lbe_name" {
  default     = "lbe-global360-task"
  type        = string
  description = "Name of the load balancer"
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

variable "lb_backend_address_pool_name" {
  default     = "backend-address-pool-global360-task"
  type        = string
  description = "The name of the Backend Address Pool"
}