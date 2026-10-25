output "resource_group_name" {
  description = "Name of the environment's resource group."
  value       = azurerm_resource_group.this.name
}

output "storage_account_name" {
  description = "Name of the workload storage account."
  value       = module.app.storage_account_name
}

output "vnet_id" {
  description = "Resource ID of the virtual network."
  value       = module.network.vnet_id
}
