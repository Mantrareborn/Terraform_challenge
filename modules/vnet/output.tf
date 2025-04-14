output "vnet_id" {
    description = "VNET ID"
    value = azurerm_virtual_network.myvnet.id
}

output "vnet_name" {
    description = "VNET Name"
    value = azurerm_virtual_network.myvnet.name
}

output "subnet_id" {
  description = "The ID of the created Subnet"
  value       = azurerm_subnet.mysubnet.id
}
