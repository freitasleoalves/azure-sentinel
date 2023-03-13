output "storage_account_id" {
  description = "Return storage account id."
  value       = data.azurerm_storage_account.log.id
}