terraform {
  required_version = ">= 1.1.0"

  backend "azurerm" {
    resource_group_name  = "feli0041-githubactions-rg"
    storage_account_name = "feli0041githubactionss"
    container_name       = "tfstate"
    key                  = "prod.app.tfstate"
    use_oidc             = true
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.94.0"
    }
  }
}


# Define providers and their config params
provider "azurerm" {
  # Leave the features block empty to accept all defaults
  features {}
  use_oidc = true
}
