terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.92.0"
    }
  }

  cloud {
    organization = env.TERRA_ORG

    workspaces {
      name = env.TERRA_WORKSPACE
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

resource "azurerm_resource_group" "this" {
  name     = "github-terraform-rg"
  location = "East US"
}