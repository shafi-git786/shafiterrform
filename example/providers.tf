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
    resource_group_name  = "sqldb-rg"
    storage_account_name = "sqldbstrntaccount12"
    container_name       = "mynewcon"
    key                  = "terraformgithubexample.tfstate"
    subscription_id       = "fddd3813-63cd-41f4-bd6f-2d7499906fa7"
    tenant_id             = "d3cbd746-7207-498c-840a-4c8d8d5879d4"
  }
}
