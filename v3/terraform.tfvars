resourcegroup = {
  rg_location = "brazilsouth"
}

prefix = "sentinel"

env = "prod"

tags = {
  "Application" : "Sentinel",
  "Department" : "Cloud",
  "Environment" : "prod",
  "Owner" : "GetNet"
}

filename = "./config/example.ps1"