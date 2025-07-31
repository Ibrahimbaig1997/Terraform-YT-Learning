terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "MigrationRG"
    storage_account_name = "migstracc"
    container_name       = "terraform-learning-yt"
    key                  = "Day22-terraform.tfstate"

  }
}

provider "azurerm" {
  features {}
  subscription_id = "5ade8a7e-f940-457e-9b4e-65bd6e1d0a29"
}