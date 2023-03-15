# terraform {
#   backend "azurerm" {
#     storage_account_name = "#{STGNAME}#"
#     container_name       = "terraform"
#     key                  = "terraform.tfstate"
#     resource_group_name  = "#{RGNAME}#"
#   }
# }

terraform {
  backend "local" {}
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.46.0"
    }
  }
}