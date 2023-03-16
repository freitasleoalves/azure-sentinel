rg_location = "brazilsouth"

prefix = "sentinel"

sa_names_standard = ["sentinel", "teste", "foreach"]

sa_names_premium = ["premium", "store", "logs"]

env = "prod"

tags = {
  "Application" : "Sentinel",
  "Department" : "Cloud",
  "Environment" : "prod",
  "Owner" : "GetNet"
  "env" : "prod"
}

sa_names_map = {
  "test1" = {
    name                     = "mapexercise01",
    account_replication_type = "ZRS"
  }
  "test2" = {
    name                     = "mapexercise02",
    account_replication_type = "LRS"
  }
}

filename = "./scripts/example.ps1"