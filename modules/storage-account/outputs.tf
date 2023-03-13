output "storage_account_id" {
  description = "Return storage account id."
  value       = azurerm_storage_account.log.id
}