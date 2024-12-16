resource "azurerm_route_table" "route_spoke1_to_spoke2" {
  name                = var.route_spoke1_to_spoke2_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg1.name
}

resource "azurerm_route" "route_spoke1_to_spoke2" {
  name                = "routefromSpoke1ToSpoke2"
  resource_group_name = azurerm_resource_group.rg1.name
  route_table_name    = azurerm_route_table.route_spoke1_to_spoke2.name
  address_prefix      = "10.63.0.0/22" # Spoke2 address space
  next_hop_type       = "VirtualAppliance"
  next_hop_in_ip_address = "10.60.0.4" # Hub VM IP address
}

resource "azurerm_subnet_route_table_association" "rt_spoke1_to_spoke2_association" {
  subnet_id      = azurerm_subnet.spoke1_subnet0.id
  route_table_id = azurerm_route_table.route_spoke1_to_spoke2.id
}

resource "azurerm_route_table" "route_spoke2_to_spoke1" {
  name                = var.route_spoke2_to_spoke1_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg1.name
}

resource "azurerm_route" "route_spoke2_to_spoke1" {
  name                = "routefromSpoke2ToSpoke1"
  resource_group_name = azurerm_resource_group.rg1.name
  route_table_name    = azurerm_route_table.route_spoke2_to_spoke1.name
  address_prefix      = "10.62.0.0/22" # Spoke1 address space
  next_hop_type       = "VirtualAppliance"
  next_hop_in_ip_address = "10.60.0.4" # Hub VM IP address
}

resource "azurerm_subnet_route_table_association" "rt_spoke2_to_spoke1_association" {
  subnet_id      = azurerm_subnet.spoke2_subnet0.id
  route_table_id = azurerm_route_table.route_spoke2_to_spoke1.id
}
