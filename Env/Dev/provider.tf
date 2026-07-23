terraform {
  # backend "azurerm" {
  #   resource_group_name  = "backendtest"
  #   storage_account_name = "akhileshtest"
  #   container_name       = "canttest"
  #   key                  = "pipe.tfstate"
  # }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
}
provider "azurerm" {
  features {}

}