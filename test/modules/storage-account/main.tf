###############################################################################
# Storage Account
###############################################################################

# resource "random_integer" "this" {
#   min = 1
#   max = 50000
#   # keepers = {
#   #   # Generate a new integer each time we switch to a new listener ARN
#   #   listener_arn = var.listener_arn
#   # }
# }

resource "azurerm_storage_account" "log" {
  for_each                        = toset(var.sa_names_standard)
  name                            = "sagetnetlog${each.value}"
  resource_group_name             = var.resource_group_name
  location                        = var.location
  account_tier                    = "Standard"
  account_replication_type        = "LRS"
  min_tls_version                 = "TLS1_2"
  allow_nested_items_to_be_public = false

  tags = var.tags

  network_rules {
    default_action = "Deny"
    bypass         = ["AzureServices"]
    # virtual_network_subnet_ids = [var.virtual_network_subnet_ids]
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

resource "azurerm_storage_account" "premium" {
  for_each                        = toset(var.sa_names_premium)
  name                            = "sagetnetlog${each.value}"
  resource_group_name             = var.resource_group_name
  location                        = var.location
  account_tier                    = "Premium"
  account_replication_type        = "GRS"
  min_tls_version                 = "TLS1_2"
  allow_nested_items_to_be_public = false

  tags = var.tags

  network_rules {
    default_action = "Deny"
    bypass         = ["AzureServices"]
    # virtual_network_subnet_ids = [var.virtual_network_subnet_ids]
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

resource "azurerm_storage_account" "map" {
  for_each                        = var.sa_names_map
  name                            = "saprefix${each.value["name"]}"
  resource_group_name             = var.resource_group_name
  location                        = var.location
  account_tier                    = "Premium"
  account_replication_type        = each.value["account_replication_type"]
  min_tls_version                 = "TLS1_2"
  allow_nested_items_to_be_public = false

  tags = var.tags

  network_rules {
    default_action = "Deny"
    bypass         = ["AzureServices"]
    # virtual_network_subnet_ids = [var.virtual_network_subnet_ids]
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
  for_each = toset(var.sa_names_standard)
  provisioner "local-exec" {
    command = "az storage cors clear --services bqft --connection-string '${azurerm_storage_account.log[each.key].primary_connection_string}'"
  }
  depends_on = [
    azurerm_storage_account.log
  ]
}

resource "null_resource" "sa_log_cors_microsoft" {
  for_each = toset(var.sa_names_standard)
  provisioner "local-exec" {
    command = "az storage cors add --methods DELETE GET HEAD MERGE POST OPTIONS PUT --origins 'https://*.microsoft.com' --allowed-headers '*' --exposed-headers '*' --max-age 1800 --services bqft --connection-string '${azurerm_storage_account.log[each.key].primary_connection_string}'"
  }
  depends_on = [
    null_resource.sa_log_clear_cors
  ]
}

resource "null_resource" "sa_log_cors_azur" {
  for_each = toset(var.sa_names_premium)
  provisioner "local-exec" {
    command = "az storage cors add --methods DELETE GET HEAD MERGE POST OPTIONS PUT --origins 'https://*.azure.com' --allowed-headers '*' --exposed-headers '*' --max-age 1800 --services bqft --connection-string '${azurerm_storage_account.premium[each.key].primary_connection_string}'"
  }
  depends_on = [
    null_resource.sa_log_cors_microsoft
  ]
}