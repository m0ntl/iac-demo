variable "environment" {
  description = "Environment name, used in resource names and tags."
  type        = string

  validation {
    condition     = contains(["dev", "qa", "staging", "prod"], var.environment)
    error_message = "The environment must be dev, qa, staging or prod."
  }
}

variable "workload" {
  description = "Short workload name used in resource names (3-8 lowercase letters or digits)."
  type        = string
  default     = "iacdemo"

  validation {
    condition     = can(regex("^[a-z0-9]{3,8}$", var.workload))
    error_message = "The workload must be 3-8 lowercase letters or digits."
  }
}

variable "location" {
  description = "Azure region for all resources."
  type        = string
}

variable "vnet_address_space" {
  description = "Address space of the virtual network. Use a different range per environment."
  type        = list(string)
}

variable "subnet_address_prefixes" {
  description = "Address prefixes of the application subnet."
  type        = list(string)
}

variable "storage_replication_type" {
  description = "Storage replication, which sets the SKU (Standard_<type>). LRS for dev, GRS for prod."
  type        = string

  validation {
    condition     = contains(["LRS", "ZRS", "GRS", "RAGRS", "GZRS", "RAGZRS"], var.storage_replication_type)
    error_message = "The storage_replication_type must be LRS, ZRS, GRS, RAGRS, GZRS or RAGZRS."
  }
}

variable "tags" {
  description = "Extra tags for every resource, for example the cost center."
  type        = map(string)
  default     = {}
}
