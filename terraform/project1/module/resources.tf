resource "azurerm_resource_group" "env" {
  name     = "rg-p1-${var.env}-${var.suffix}" # name: azure resource type (2 chars)-project1 (2 chars)-environment (2 char)-suffix
  location = var.location
}

resource "azurerm_storage_account" "env" {
  name                     = "stp1${var.env}${var.suffix}" # name: azure resource type (2 chars)-project1 (2 chars)-environment (2 char)-suffix
  resource_group_name      = azurerm_resource_group.env.name
  location                 = azurerm_resource_group.env.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}