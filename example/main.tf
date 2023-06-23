resource "azurerm_resource_group" "sharg" {
  name     = "shafi-githubrg"
  location = "East US"
}

resource "azurerm_storage_account" "shastg1" {
  name                     = "storagenewshaiks"
  resource_group_name      = azurerm_resource_group.sharg.name
  location                 = azurerm_resource_group.sharg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
