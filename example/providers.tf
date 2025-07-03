terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.35.0"
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
    resource_group_name  = "sqldb-rg"
    storage_account_name = "sqldbstrntaccount12"
    container_name       = "mynewcon"
    key                  = "terraformgithubexample.tfstate"
    subscription_id       = "1ee7d876-0c53-43e7-a87f-11e11a8122cf"
    tenant_id             = "ab3f3475-1f43-4893-a4b3-6a5735e72bba"
  }
}
