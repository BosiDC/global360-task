variable "name" {
  default     = "rg-global360-task"
  type        = string
  description = "Name of the resouce group"
}

variable "rg_name" {
  default     = "rg-global360-task"
  type        = string
  description = "Name of the resouce group"
}

variable "location" {
  default     = "australiaeast"
  type        = string
  description = "The Azure region to deploy into"
}

variable "instances" {
  type        = number
  description = "Number of instances to deploy"
}

variable "nic_name" {
  default     = "rg-global360-task"
  type        = string
  description = "Name of the resouce group"
}

variable "load_balancer_backend_address_pool_ids" {
  type        = list
  description = "A list of Backend Address Pools ID's from a Load Balancer which this Virtual Machine Scale Set should be connected to" 
}

variable "subnet_id" {
  type        = string
  description = "ID of the subnet to use for the VM"
}