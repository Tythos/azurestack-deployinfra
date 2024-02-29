terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.93.0"
    }

    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "4.25.0"
    }
  }
}

provider "azurerm" {
  client_id       = var.AZURE_CLIENT_ID
  client_secret   = var.AZURE_CLIENT_SECRET
  tenant_id       = var.AZURE_TENANT_ID
  subscription_id = var.AZURE_SUBSCRIPTION_ID

  features {}
}

provider "cloudflare" {
    api_token = var.CLOUDFLARE_API_TOKEN
}
