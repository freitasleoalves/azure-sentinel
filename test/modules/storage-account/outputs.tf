output "storage_account_id" {
  description = "Return storage account id."
  value = {
    for k, v in azurerm_storage_account.log : k => v.id
  }
}

output "storage_account_id_premium" {
  description = "Return storage account id."
  value = {
    for k, v in azurerm_storage_account.premium : k => v.id
  }
}