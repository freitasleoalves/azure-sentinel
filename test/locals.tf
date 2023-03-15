locals {
  # Some resource names have max length constraints, use this to map locations to another name
  map_location = {
    "brazilsouth" = "bsouth"
    "eastus"      = "eus"
  }

  # Retrives short name for location
  suffix = lookup(local.map_location, var.rg_location)
}