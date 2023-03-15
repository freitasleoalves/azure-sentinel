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
  {
    name     = "map",
    location = "brazilsouth"
  },
  {
    name     = "map",
    location = "brazilsouth"
  }
}

filename = "./scripts/example.ps1"