module "resource_groups" {
  source      = "./modules/resource-groups"
  rg_location = var.resourcegroup.rg_location
  rg_tags     = var.resourcegroup.tags
  prefix      = var.prefix
  suffix      = local.suffix
  env         = var.env
}

module "vnet" {
  source                = "./modules/vnet_talvez"
  location              = module.resource_groups.resource_group_location
  resource_group_name   = module.resource_groups.resource_group_name
  vnet_address_space    = var.vnet.vnet_address_space
  snet_address_prefixes = var.vnet.snet_address_prefixes
  prefix                = var.prefix
  suffix                = local.suffix
}

module "log_analytics" {
  source                = "./modules/log-analytics"
  location              = module.resource_groups.resource_group_location
  resource_group_name   = module.resource_groups.resource_group_name
  workspace_name        = module.workspace.workspace_name
  workspace_resource_id = module.workspace.workspace_resource_id
}

module "storage_account" {
  source                     = "./modules/storage-account"
  location                   = module.resource_groups.resource_group_location
  resource_group_name        = module.resource_groups.resource_group_name
  virtual_network_subnet_ids = module.vnet.snet_id
}

module "workspace" {
  source              = "./modules/workspace"
  location            = module.resource_groups.resource_group_location
  resource_group_name = module.resource_groups.resource_group_name
  suffix              = local.suffix
  storage_account_ids = module.storage_account.storage_account_id
  env                 = var.env
  prefix              = var.prefix

  depends_on = [
    module.storage_account
  ]
}