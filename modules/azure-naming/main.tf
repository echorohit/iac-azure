terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.0.0"
    }
  }
}

provider "azurerm" {
    # version = "=2.0.0"
    subscription_id = var.subscriptionID

    features {}
}


module "storage_account_name" {
  source   = "gsoft-inc/naming/azurerm//modules/general/resource_group"
  name     = "example"
  prefixes = ["organization", "project", "production"]
}

module "security_group_name" {
  
}