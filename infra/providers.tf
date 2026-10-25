terraform {
  required_version = ">= 1.9.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

# Subscription, tenant and client come from ARM_* environment variables:
# OIDC in the pipeline, or your Azure CLI login when you run Terraform locally.
provider "azurerm" {
  features {}
}
