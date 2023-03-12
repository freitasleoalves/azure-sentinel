###############################################################################
# Storage Account
###############################################################################

resource "azurerm_storage_account" "log" {
  name                     = "sagetnetlog${var.prefix}01"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  min_tls_version          = "TLS1_2"
  allow_nested_items_to_be_public = false

  network_rules {
    default_action             = "Deny"
    bypass                     = ["AzureServices"]
    virtual_network_subnet_ids = [var.virtual_network_subnet_ids]
  }

  blob_properties {
    versioning_enabled  = false
    change_feed_enabled = false
  }

  lifecycle {
    ignore_changes = [
      blob_properties,
      network_rules
    ]
  }
}

resource "null_resource" "sa_log_clear_cors" {
  provisioner "local-exec" {
    command = "az storage cors clear --services bqft --connection-string '${azurerm_storage_account.log.primary_connection_string}'"
  }
  depends_on = [
    azurerm_storage_account.log
  ]
}

resource "null_resource" "sa_log_cors_microsoft" {
  provisioner "local-exec" {
    command = "az storage cors add --methods DELETE GET HEAD MERGE POST OPTIONS PUT --origins 'https://*.microsoft.com' --allowed-headers '*' --exposed-headers '*' --max-age 1800 --services bqft --connection-string '${azurerm_storage_account.log.primary_connection_string}'"
  }
  depends_on = [
    null_resource.sa_log_clear_cors
  ]
}

resource "null_resource" "sa_log_cors_azur" {
  provisioner "local-exec" {
    command = "az storage cors add --methods DELETE GET HEAD MERGE POST OPTIONS PUT --origins 'https://*.azure.com' --allowed-headers '*' --exposed-headers '*' --max-age 1800 --services bqft --connection-string '${azurerm_storage_account.log.primary_connection_string}'"
  }
  depends_on = [
    null_resource.sa_log_cors_microsoft
  ]
}