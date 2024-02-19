terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.92.0"
    }
  }

  cloud {
    organization = "advanced-terraform-almirb40"

    workspaces {
      name = "advanced-terraform"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

module "resource_group" {
  source   = "./modules/resource_group"
  name     = var.rg_name
  location = var.rg_location
}

module "azure_function" {
  source              = "./modules/azure_function"
  name                = var.function_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  storage_account_name = var.storage_account_name
  app_service_plan_id       = var.app_service_plan_id # will be set dynamically after apply
}