terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=3.92.0"
    }
  }
}

# 2. Configure the AzureRM Provider
provider "azurerm" {
  features {}
}