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

resource "azurerm_resource_group" "rg" {
  name     = "github-terraform-test-rg"
  location = "East US"
}