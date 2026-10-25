environment              = "dev"
location                 = "westeurope"
vnet_address_space       = ["10.10.0.0/16"]
subnet_address_prefixes  = ["10.10.1.0/24"]
storage_replication_type = "LRS"

tags = {
  cost_center = "CC-1001"
}
