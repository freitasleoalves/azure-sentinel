variable "resource_group_name" {
  default = ""
}

variable "location" {
  default = ""
}

variable "virtual_network_subnet_ids" {
  default = ""
}

variable "prefix" {
  default = ""
}

variable "tags" {
  type = map(string)
}

variable "sa_names_standard" {
  type = list(string)
}

variable "sa_names_premium" {
  type = list(string)
}

variable "sa_names_map" {
  type = map(object({
    name                     = string
    account_replication_type = string
  }))
}