variable "resource_group_name" {
    type = string
    default = "terra_cloud_github_actions_rg"
}

variable "location" {
  type = string
  default = "East Us"
}

variable "storage_account_name" {
    type = string
    default = "terra_cloud_github_actions_storage"
}

variable "function_name" {
    type = string
    default = "terra_cloud_github_actions_function"
}

variable "app_service_plan_id" {
  type = string
  default = "app_service_plan_id"
}