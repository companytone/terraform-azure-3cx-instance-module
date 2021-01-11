terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.42.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 2.17.0"
    }
  }
}