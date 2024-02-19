
resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

resource "azurerm_service_plan" "app_service_plan" {
  name                = "${var.name}-plan"
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type = var.os_type
  sku_name = var.sku_name
}

resource "aazurerm_linux_function_app" "linux_function_app" {
  name                      = var.name
  resource_group_name       = var.resource_group_name
  location                  = var.location
  storage_account_name      = azurerm_storage_account.storage_account.name
  storage_account_access_key = azurerm_storage_account.storage_account.primary_access_key
  app_service_plan_id       = azurerm_service_plan.app_service_plan.id
}
