resource "azurerm_resource_group" "rg" {
  # for_each = toset(var.configrgs)
  name     = format("rg-%s-%s-%s", var.prefix, var.env, var.suffix)
  location = var.rg_location
  tags     = var.tags
}
