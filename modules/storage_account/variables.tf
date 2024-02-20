variable "name_prefix" {
    type = string  
}

variable "resource_group_name" {
  type = string
}

variable "account_tier" {
    type = string
    default = "Standard"
}

variable "location" {
  type = string
}

variable "account_replication_type" {
    type = string
    default = "LRS"
}

variable "environment" {
    type = string
}