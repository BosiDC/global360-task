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

# load balancer 
variable "pip_name" {
  default     = "pip-global360-task"
  type        = string
  description = "Name of the public IP address"
}

variable "lbe_name" {
  default     = "lbe-global360-task"
  type        = string
  description = "Name of the load balancer"
}

variable "lb_backend_address_pool_name" {
  default     = "backend-address-pool-global360-task"
  type        = string
  description = "The name of the Backend Address Pool"
}

# linux_vm_scale_set
variable "vmss_name" {
  default     = "vmss-global360-task"
  type        = string
  description = "Name of the linux vm scale set"
}

variable "instances" {
  default     = 2
  type        = number
  description = "Number of instances to deploy into the vm scale set"
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags assigned to resource"
}