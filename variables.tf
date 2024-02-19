variable "resource_group_name" {
    type = string
}

variable "location" {
  type = string
}

variable "storage_account_name" {
    type = string
}

variable "function_name" {
    type = string
}

variable "app_service_plan_id" {
  type = string
  default = "app_service_plan_id"
}