resource "azurerm_resource_group" "env" {
  name     = "rg-p1-${var.env}-1f7c3b1e" # name: azure resource type (2 chars)-project1 (2 chars)-environment
  location = var.location
}

resource "azurerm_storage_account" "env" {
  name                     = "stp1${var.env}1f7c3b1e" # name: azure resource type (2 chars)-project1 (2 chars)-environment
  resource_group_name      = azurerm_resource_group.env.name
  location                 = azurerm_resource_group.env.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}