terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current" {}

terraform {
  backend "azurerm" {
    resource_group_name  = "terra-rg"
    storage_account_name = "teststgacnt6789backend"
    container_name       = "container-bknd"
    key                  = "terraformgithubexample.tfstate"
    subscription_id       = "739b9cfd-8e02-47a9-8e2b-f5c8c7e1d547"
    tenant_id             = "4a00ec52-96a9-4a3d-8701-f5ce094b0317"
  }
}
