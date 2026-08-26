terraform {
  backend "azurerm" {
    resource_group_name  = "akhileshtestpip"
    storage_account_name = "akhileshstoragepipi"
    container_name       = "akhileshcanttest1"
    key                  = "pipe.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "c3c28256-d91f-4150-8f2e-60a24904b563"
}