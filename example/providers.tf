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
    resource_group_name  = "shaf-rg"
    storage_account_name = "shafistg12"
    container_name       = "shafistg12cont"
    key                  = "terraformgithubexample.tfstate"
    subscription_id       = "d4281e96-cd35-4be0-b807-b446ba406ea8"
    tenant_id             = "ae229306-f857-4091-a542-342fbe575384"
  }
}
