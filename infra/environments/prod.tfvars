environment              = "prod"
location                 = "westeurope"
vnet_address_space       = ["10.20.0.0/16"]
subnet_address_prefixes  = ["10.20.1.0/24"]
storage_replication_type = "GRS"

tags = {
  cost_center = "CC-2001"
}
