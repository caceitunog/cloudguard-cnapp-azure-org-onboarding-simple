terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.50.0"
    }
    dome9 = {
      source = "dome9/dome9"
      version = "~> 1.29.0"
    }  
  }
}

provider "azurerm" {
  features { }
  client_id         = var.azure-client-id
  client_secret     = var.azure-client-secret
  subscription_id   = var.azure-subscription
  tenant_id         = var.azure-tenant
}

provider "dome9" {
  dome9_access_id   = var.cspm-key-id
  dome9_secret_key  = var.cspm-key-secret
  base_url = lookup(var.chkp-account-region-list, var.chkp-account-region)[1]
}