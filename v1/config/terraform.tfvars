resourcegroup = {
  rg_location = "brazilsouth"
  tags = {
    "Application" : "Sentinel",
    "Department" : "Cloud",
    "Environment" : "prod",
    "Owner" : "leonardo"
  }
}

vnet = {
  vnet_address_space    = ["10.120.4.0/23"]
  snet_address_prefixes = ["10.120.4.0/24"]
}

prefix = "sentinel"

env = "prod"