output "vnet_id" {
  description = "Resource ID of the virtual network."
  value       = azurerm_virtual_network.this.id
}

output "subnet_id" {
  description = "Resource ID of the application subnet."
  value       = azurerm_subnet.app.id
}
