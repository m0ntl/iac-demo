terraform {
  backend "azurerm" {
    # Entra ID (RBAC) instead of storage account keys; shared key access is disabled on the account.
    use_azuread_auth = true

    # storage_account_name, container_name and key are passed with -backend-config at init time.
  }
}
