output "vnet" {
  description = "Object with values of the created vnet"
  value       = azurerm_virtual_network.vnet
}

output "snet_id" {
  description = "Object with values of the created snet"
  value       = azurerm_subnet.snet.id
}