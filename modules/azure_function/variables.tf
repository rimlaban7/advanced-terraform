variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "storage_account_name" {
  type = string
}

variable "app_service_plan_id" {
  type = string
}

variable "account_tier" {
    type = string
    default = "Standard"
}

variable "account_replication_type" {
    type = string
    default = "LRS"
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