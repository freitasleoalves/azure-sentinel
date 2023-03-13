module "resource_groups" {
  source  = "./modules/resource-groups"
  rg_name = data.azurerm_resource_group.rg.name
}

module "log_analytics" {
  source                = "./modules/log-analytics"
  location              = data.azurerm_resource_group.rg.location
  resource_group_name   = data.azurerm_resource_group.rg.name
  workspace_name        = module.workspace.workspace_name
  workspace_resource_id = module.workspace.workspace_resource_id
}

module "storage_account" {
  source  = "./modules/storage-account"
  sa_rg   = data.azurerm_storage_account.log.resource_group_name
  sa_name = data.azurerm_storage_account.log.name
}

module "workspace" {
  source              = "./modules/workspace"
  resource_group_name = data.azurerm_storage_account.log.resource_group_name
  suffix              = local.suffix
  env                 = var.env
  prefix              = var.prefix

  depends_on = [
    module.storage_account
  ]
}