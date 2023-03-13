###############################################################################
# Storage Account
###############################################################################

data "azurerm_storage_account" "log" {
  name                = var.sa_name
  resource_group_name = var.sa_rg
}

