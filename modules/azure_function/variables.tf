variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "app_service_plan_id" {
  type = string
}

variable "os_type" {
    type = string
    default = "Linux"
}

variable "sku_name" {
    type = string
    default = "Y1"
}

variable "app_settings_run_time" {
    type = string
    default = "dotnet"
}

variable "app_service_plan_kind" {
  type = string
  default = "FunctionApp"
}

variable "storage_prefix" {
  type = string
}

variable "environment" {
  type = string
}