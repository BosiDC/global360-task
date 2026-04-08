variable "rg_id" {
  type        = string
  description = "ID of the resouce group"
}

variable "location" {
  default     = "australiaeast"
  type        = string
  description = "The Azure region to deploy into"
}