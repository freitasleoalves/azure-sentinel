module "resource_groups" {
  source      = "./modules/resource-groups"
  rg_location = var.resourcegroup.rg_location
  prefix      = var.prefix
  suffix      = local.suffix
  env         = var.env
  tags        = var.tags
}

module "log_analytics" {
  source                = "./modules/log-analytics"
  location              = module.resource_groups.resource_group_location
  resource_group_name   = module.resource_groups.resource_group_name
  workspace_name        = module.workspace.workspace_name
  workspace_resource_id = module.workspace.workspace_resource_id
  tags                  = var.tags
  suffix              = local.suffix
  env                 = var.env
  prefix              = var.prefix
  filename = data.local_file.this.filename
}

module "storage_account" {
  source                     = "./modules/storage-account"
  location                   = module.resource_groups.resource_group_location
  resource_group_name        = module.resource_groups.resource_group_name
  # virtual_network_subnet_ids = module.vnet.snet_id
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