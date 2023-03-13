output "workspace_resource_id" {
  value       = data.azurerm_log_analytics_workspace.log_analytics.id
}

output "workspace_name" {
  description = "Object with values of the created vnet"
  value       = data.azurerm_log_analytics_workspace.log_analytics.name
}