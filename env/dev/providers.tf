terraform {
  required_version = ">= 0.12"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm",
      version = "=3.0.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "tfstateRGBianka"
    storage_account_name = "tfstatebianka"
    container_name       = "biankajs"
    key                  = "terraform.state"
  }

}

provider "azurerm" {
  features {

  }
}