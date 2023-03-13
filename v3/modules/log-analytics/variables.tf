variable "location" {
  default = ""
}

variable "resource_group_name" {
  default = ""
}

variable "workspace_resource_id" {
  default = ""
}

variable "workspace_name" {
  default = ""
}

variable "prefix" {
  default = ""
}

variable "suffix" {
  default = ""
}

variable "env" {
  default = ""
}

variable "filename" {
  type = string
}

variable "tags" {
  type = map(string)
}