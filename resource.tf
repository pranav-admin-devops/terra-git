resource "azurerm_resource_group" "rg" {
  name     = "pranav-demo"
  location = "Central India"
}

resource "azurerm_virtual_network" "vent" {
  name                = "pranav-network"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5", "8.8.8.8"]
}

resource "azurerm_subnet" "sub" {
  name                 = "pranav-subnet1"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vent.name
  address_prefixes     = ["10.0.1.0/24"]
}
