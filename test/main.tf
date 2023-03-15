module "resource_groups" {
  source      = "./modules/resource-groups"
  rg_location = var.rg_location
  prefix      = var.prefix
  suffix      = local.suffix
  env         = var.env
  tags        = var.tags
}

module "storage_account" {
  source              = "./modules/storage-account"
  location            = module.resource_groups.resource_group_location
  resource_group_name = module.resource_groups.resource_group_name
  sa_names_standard   = var.sa_names_standard
  sa_names_premium    = var.sa_names_premium
  sa_names_map        = var.sa_names_map
  tags                = var.tags
}
