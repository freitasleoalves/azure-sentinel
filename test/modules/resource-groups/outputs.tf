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

# output "resource_group_id" {
#   value       = {
#     for k, v in azurerm_resource_group.rg : k => v.id
#   }
#   description = "Resource Group id"
# }

# output "resource_group_name" {
#   value       = {
#     for k, v in azurerm_resource_group.rg : k => v.name
#   }
#   description = "Resource Group name"
# }

# output "resource_group_location" {
#   value       = {
#     for k, v in azurerm_resource_group.rg : k => v.location
#   }
#   description = "Resource Group location"
# }