terraform {
 required_version = ">= 1.3.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.54.0"
    }
  }
backend "azurerm" {}
}

provider "azurerm" {
  features {}

  subscription_id = "22135fc2-ce1f-463b-9d7e-0de70cc656ec"
}
