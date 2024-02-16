terraform {

  backend "remote" {
         # The name of your Terraform Cloud organization.
         organization = "advanced-terraform-almirb40"

#         # The name of the Terraform Cloud workspace to store Terraform state files in.
         workspaces {
           name = "example-workspace"
         }
  }

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