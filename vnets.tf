resource "azurerm_virtual_network" "hub_vnet" {
  name                = var.hub_vnet_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg1.name
  address_space       = ["10.60.0.0/22"]
}

resource "azurerm_subnet" "hub_subnet0" {
  name                 = "hub-subnet0"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.hub_vnet.name
  address_prefixes     = ["10.60.0.0/24"]
}

resource "azurerm_virtual_network" "spoke1_vnet" {
  name                = var.spoke1_vnet_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg1.name
  address_space       = ["10.62.0.0/22"]
}

resource "azurerm_subnet" "spoke1_subnet0" {
  name                 = "spoke1-subnet0"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.spoke1_vnet.name
  address_prefixes     = ["10.62.0.0/24"]
}

resource "azurerm_virtual_network" "spoke2_vnet" {
  name                = var.spoke2_vnet_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg1.name
  address_space       = ["10.63.0.0/22"]
}

resource "azurerm_subnet" "spoke2_subnet0" {
  name                 = "spoke2-subnet0"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.spoke2_vnet.name
  address_prefixes     = ["10.63.0.0/24"]
}
