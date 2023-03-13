resource "azurerm_resource_group" "rg" {
  # count    = length(var.rg_name)
  # name     = format("%s_%s", var.rg_name[count.index], replace(upper(terraform.workspace), "-", ""))
  name     = format("rg-%s-%s-%s", var.prefix, var.env, var.suffix)
  location = var.rg_location
  tags     = var.rg_tags
}
