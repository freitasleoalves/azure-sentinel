data "azurerm_resource_group" "rg" {
  name = var.rg_name
}

data "azurerm_storage_account" "log" {
  name                = var.sa_name
  resource_group_name = data.azurerm_resource_group.rg.name
}

data "azurerm_log_analytics_workspace" "log_analytics" {
  name                = format("log-%s-%s-%s", var.prefix, var.env, local.suffix)
  resource_group_name = data.azurerm_resource_group.rg.name
}