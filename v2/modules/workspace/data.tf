###############################################################################
# Log Analytics Workspace
###############################################################################
data "azurerm_log_analytics_workspace" "log_analytics" {
  name                = format("log-%s-%s-%s", var.prefix, var.env, var.suffix)
  resource_group_name = var.resource_group_name
}

