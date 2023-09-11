provider "azurerm"{
    features {
    }
}
resource "azurerm_resource_group" "rg" {
  name     = "storage-resources"
  location = "West Europe"
}

resource "azurerm_storage_account" "st" {
  name                     = "storageaccountrk12"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}