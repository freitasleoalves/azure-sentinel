variable "rg_location" {
  type        = string
  description = "(Required) A list with the Azure regions where the Resource Groups should exist."
}

# variable "rg_name" {
#   type        = list(string)
#   description = "(Required) A list with the Name which should be used for the Resource Groups."
# }

variable "rg_tags" {
  type        = map(string)
  description = "(Optional) A mapping of tags which should be assigned to the Resource Groups."
  default     = {}
}

variable "env" {
  type        = string
}

variable "suffix" {
  type        = string
}

variable "prefix" {
  type        = string
}