variable "name" {
  description = "Name of the virtual network."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group for the network resources."
  type        = string
}

variable "location" {
  description = "Azure region."
  type        = string
}

variable "address_space" {
  description = "Address space of the virtual network."
  type        = list(string)
}

variable "subnet_address_prefixes" {
  description = "Address prefixes of the application subnet."
  type        = list(string)
}

variable "tags" {
  description = "Tags for the virtual network."
  type        = map(string)
}
