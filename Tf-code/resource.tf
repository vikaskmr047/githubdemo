#Creating resource group

resource "azurerm_resource_group" "rg" {
  name = "Test"
  location = "East US"
}

resource "azurerm_virtual_network" "vnet" {
  name = "demo-vnet"
  address_space = [ "192.168.0.0/16" ]
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
  name = "demo-subnet1"
  address_prefixes = [ "192.168.0.0/24" ]
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name = azurerm_resource_group.rg.name
  
}