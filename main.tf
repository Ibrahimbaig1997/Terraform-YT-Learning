resource "azurerm_resource_group" "rg" {
  name     = "Day25-rg"
  location = "Canada Central"
}

resource "azurerm_storage_account" "st" {
    name = "ibrstraaday25"
    location = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    account_tier             = "Standard"
    account_replication_type = "GRS"
}
