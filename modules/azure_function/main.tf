module "storage_account" {
  source = "./modules/storage_account"

  resource_group_name = var.resource_group_name
  location = var.location
  name_prefix = var.storage_prefix
  environment = var.environment

}

resource "azurerm_service_plan" "app_service_plan" {
  name                = "${var.name}-plan"
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type = var.os_type
  sku_name = var.sku_name
}

resource "azurerm_linux_function_app" "linux_function_app" {
  name                      = var.name
  resource_group_name       = var.resource_group_name
  location                  = var.location
  storage_account_name      = azurerm_storage_account.storage_account.name
  storage_account_access_key = azurerm_storage_account.storage_account.primary_access_key
  service_plan_id       = azurerm_service_plan.app_service_plan.id

  site_config {}
}
