variable "rg_location" {
  description = "This variable set values for resources that uses a same location and need use a resource group name to deploy"
  type        = string
}

variable "prefix" {
  type = string
}

variable "sa_names_standard" {
  type = list(string)
}

variable "sa_names_premium" {
  type = list(string)
}

variable "sa_names_map" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "env" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "filename" {
  type = string
}