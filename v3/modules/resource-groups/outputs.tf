output "resource_group_id" {
  value       = azurerm_resource_group.rg.id
  description = "Resource Group id"
}

output "resource_group_name" {
  value       = azurerm_resource_group.rg.name
  description = "Resource Group name"
}

output "resource_group_location" {
  value       = azurerm_resource_group.rg.location
  description = "Resource Group location"
}