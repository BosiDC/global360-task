variable "name" {
  default     = "rg-global360-task"
  type        = string
  description = "Name of the resouce group"
}

variable "location" {
  default     = "australiaeast"
  type        = string
  description = "The Azure region to deploy into"
}