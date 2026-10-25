locals {
  name = "${var.workload}-${var.environment}"

  tags = merge(var.tags, {
    environment = var.environment
    workload    = var.workload
    managed_by  = "terraform"
  })
}

resource "azurerm_resource_group" "this" {
  name     = "rg-${local.name}"
  location = var.location
  tags     = local.tags
}

# Storage account names must be globally unique
resource "random_string" "storage_suffix" {
  length  = 6
  special = false
  upper   = false
}

module "network" {
  source = "./modules/network"

  name                    = "vnet-${local.name}"
  resource_group_name     = azurerm_resource_group.this.name
  location                = azurerm_resource_group.this.location
  address_space           = var.vnet_address_space
  subnet_address_prefixes = var.subnet_address_prefixes
  tags                    = local.tags
}

module "app" {
  source = "./modules/app"

  storage_account_name = "st${var.workload}${var.environment}${random_string.storage_suffix.result}"
  resource_group_name  = azurerm_resource_group.this.name
  location             = azurerm_resource_group.this.location
  replication_type     = var.storage_replication_type
  tags                 = local.tags
}
