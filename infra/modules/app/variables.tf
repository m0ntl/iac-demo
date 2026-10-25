variable "storage_account_name" {
  description = "Globally unique storage account name (3-24 lowercase letters or digits)."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group for the storage account."
  type        = string
}

variable "location" {
  description = "Azure region."
  type        = string
}

variable "replication_type" {
  description = "Storage replication type, for example LRS or GRS."
  type        = string
}

variable "tags" {
  description = "Tags for the storage account."
  type        = map(string)
}
