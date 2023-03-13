variable "resourcegroup" {
  description = "This variable set values for resources that uses a same location and need use a resource group name to deploy"
  type = object({
    rg_location = string
  })
}

variable "prefix" {
  default = ""
}

variable "env" {
  default = ""
}

variable "tags" {
  type = map(string)
}

variable "filename" {
  type = string
}