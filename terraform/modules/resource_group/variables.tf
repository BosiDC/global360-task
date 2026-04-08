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

variable "tags" {
  type        = map(string)
  description = "A mapping of tags assigned to resource"
}