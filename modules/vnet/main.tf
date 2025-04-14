resource "azurerm_virtual_network" "myvnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  tags                = var.tags
}

resource "azurerm_subnet" "mysubnet" {
  name                = var.subnet.name
  address_prefixes    = var.subnet_address_prefixes
  resource_group_name = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.myvnet.name
}
