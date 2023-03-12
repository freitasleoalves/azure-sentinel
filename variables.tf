variable "resourcegroup" {
  description = "This variable set values for resources that uses a same location and need use a resource group name to deploy"
  type = object({
    #rg_name     = string
    rg_location = string
    tags        = map(string)
  })
  default = {
    #rg_name     = ""
    rg_location = ""
    tags = {
      "" : ""
    }
  }
}

variable "vnet" {
  description = "Attributes needed for vnet implementation"
  type = object({
    vnet_address_space    = list(string)
    snet_address_prefixes = list(string)
  })
}

variable "prefix" {
  default = ""
}

variable "env" {
  default = ""
}

# variable "location" {
#   default = "brazilsouth"
# }