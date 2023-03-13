###############################################################################
# Microsoft Sentinel
###############################################################################
resource "azurerm_log_analytics_solution" "sentinel" {
  solution_name         = "SecurityInsights"
  location              = var.location
  resource_group_name   = var.resource_group_name
  workspace_resource_id = var.workspace_resource_id
  workspace_name        = var.workspace_name

  plan {
    publisher = "Microsoft"
    product   = "OMSGallery/SecurityInsights"
  }
}

resource "azurerm_automation_account" "this" {
  name                = format("aa-%s-%s-%s", var.prefix, var.env, var.suffix)
  location            = var.location
  resource_group_name = var.resource_group_name
  sku_name            = "Basic"

  tags = var.tags
}

resource "azurerm_automation_runbook" "this" {
  name                    = "SentinelRemediation"
  location                = var.location
  resource_group_name     = var.resource_group_name
  automation_account_name = azurerm_automation_account.this.name
  log_verbose             = "true"
  log_progress            = "true"
  description             = "This is an example runbook"
  runbook_type            = "PowerShell"

  #content = data.local_file.example.content
  content = var.filename
}