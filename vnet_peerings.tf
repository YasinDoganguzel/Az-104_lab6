resource "azurerm_virtual_network_peering" "hub_to_spoke1" {
  name                      = "hub-to-spoke1"
  resource_group_name       = azurerm_resource_group.rg1.name
  virtual_network_name      = azurerm_virtual_network.hub_vnet.name
  remote_virtual_network_id = azurerm_virtual_network.spoke1_vnet.id
}

resource "azurerm_virtual_network_peering" "spoke1_to_hub" {
  name                      = "spoke1-to-hub"
  resource_group_name       = azurerm_resource_group.rg1.name
  virtual_network_name      = azurerm_virtual_network.spoke1_vnet.name
  remote_virtual_network_id = azurerm_virtual_network.hub_vnet.id
  allow_forwarded_traffic   = true
}

resource "azurerm_virtual_network_peering" "hub_to_spoke2" {
  name                      = "hub-to-spoke2"
  resource_group_name       = azurerm_resource_group.rg1.name
  virtual_network_name      = azurerm_virtual_network.hub_vnet.name
  remote_virtual_network_id = azurerm_virtual_network.spoke2_vnet.id
}

resource "azurerm_virtual_network_peering" "spoke2_to_hub" {
  name                      = "spoke2-to-hub"
  resource_group_name       = azurerm_resource_group.rg1.name
  virtual_network_name      = azurerm_virtual_network.spoke2_vnet.name
  remote_virtual_network_id = azurerm_virtual_network.hub_vnet.id
  allow_forwarded_traffic   = true
}




# resource "azurerm_virtual_network_peering" "Vnet01ToVnet2" {
#   name                      = "Vnet01ToVnet2"
#   resource_group_name       = azurerm_resource_group.rg1.name
#   virtual_network_name      = azurerm_virtual_network.vnet01.name
#   remote_virtual_network_id = azurerm_virtual_network.vnet2.id
# }

# resource "azurerm_virtual_network_peering" "Vnet2ToVnet01" {
#   name                      = "Vnet2ToVnet01"
#   resource_group_name       = azurerm_resource_group.rg1.name
#   virtual_network_name      = azurerm_virtual_network.vnet2.name
#   remote_virtual_network_id = azurerm_virtual_network.vnet01.id
#   allow_forwarded_traffic   = true
# }



# resource "azurerm_virtual_network_peering" "Vnet01toVnet3" {
#   name                      = "Vnet01toVnet3"
#   resource_group_name       = azurerm_resource_group.rg1.name
#   virtual_network_name      = azurerm_virtual_network.vnet01.name
#   remote_virtual_network_id = azurerm_virtual_network.vnet3.id
# }

# resource "azurerm_virtual_network_peering" "Vnet3ToVnet01" {
#   name                      = "Vnet3ToVnet01"
#   resource_group_name       = azurerm_resource_group.rg1.name
#   virtual_network_name      = azurerm_virtual_network.vnet3.name
#   remote_virtual_network_id = azurerm_virtual_network.vnet01.id
#   allow_forwarded_traffic   = true
# }