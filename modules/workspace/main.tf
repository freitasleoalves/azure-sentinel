###############################################################################
# Log Analytics Workspace 
###############################################################################
resource "azurerm_log_analytics_workspace" "log_analytics" {
  name                = format("log-%s-%s-%s", var.prefix, var.env, var.suffix)
  location            = var.location
  resource_group_name = var.resource_group_name
  retention_in_days   = 30
}

###############################################################################
# Linked storage accounts
###############################################################################
resource "azurerm_log_analytics_linked_storage_account" "customlogs" {
  data_source_type      = "customlogs"
  resource_group_name   = var.resource_group_name
  workspace_resource_id = azurerm_log_analytics_workspace.log_analytics.id
  storage_account_ids   = [var.storage_account_ids]
}

resource "azurerm_log_analytics_linked_storage_account" "query" {
  data_source_type      = "query"
  resource_group_name   = var.resource_group_name
  workspace_resource_id = azurerm_log_analytics_workspace.log_analytics.id
  storage_account_ids   = [var.storage_account_ids]
}

resource "azurerm_log_analytics_linked_storage_account" "alerts" {
  data_source_type      = "alerts"
  resource_group_name   = var.resource_group_name
  workspace_resource_id = azurerm_log_analytics_workspace.log_analytics.id
  storage_account_ids   = [var.storage_account_ids]
}

###############################################################################
# Logs
###############################################################################
resource "azurerm_monitor_diagnostic_setting" "la" {
  name                       = format("ds-%s-%s-%s", var.prefix, var.env, var.suffix)
  target_resource_id         = azurerm_log_analytics_workspace.log_analytics.id
  storage_account_id         = var.storage_account_ids
  log_analytics_workspace_id = azurerm_log_analytics_workspace.log_analytics.id

  enabled_log  {
    category = "Audit"

    retention_policy {
      enabled = true
      days    = 60
    }
  }

  metric {
    category = "AllMetrics"

    retention_policy {
      enabled = true
      days    = 60
    }
  }
}
