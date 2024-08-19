resource "azurerm_resource_group" "sharg" {
  name     = "shafi-githubrg"
  location = "WEST US"
}

resource "azurerm_storage_account" "shastg1" {
  name                     = "storagenewshaiksHGTTYR"
  resource_group_name      = azurerm_resource_group.sharg.name
  location                 = azurerm_resource_group.sharg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}

resource "random_pet" "azurerm_mssql_server_name" {
  prefix = "sql"
}

resource "random_pet" "rg_name" {
  prefix = var.resource_group_name_prefix
}


resource "random_password" "admin_password" {
  count       = var.admin_password == null ? 1 : 0
  length      = 20
  special     = true
  min_numeric = 1
  min_upper   = 1
  min_lower   = 1
  min_special = 1
}
locals {
  admin_password = try(random_password.admin_password[0].result, var.admin_password)
}

resource "azurerm_mssql_server" "server" {
  name                         = "msqlserRRV1"
  resource_group_name          = azurerm_resource_group.sharg.name
  location                     = azurerm_resource_group.sharg.location
  administrator_login          = var.admin_username
  administrator_login_password = local.admin_password
  version                      = "12.0"
}

resource "azurerm_mssql_database" "db" {
  name      = var.sql_db_name
  server_id = azurerm_mssql_server.server.id
}
