output "name" {
    value = local.sa_name
}

output "primary_access_key" {
    value = azurerm_storage_account.storage_account.primary_access_key
}