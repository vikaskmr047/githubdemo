terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "= 3.0.0"
     }
  }
  backend "azurerm" {
    resource_group_name = "Terraform"
    storage_account_name = "terrraformstatebackend"
    container_name = "tf-backend"
    key = "terrraformstatebackend"
  }
}
provider "azurerm" {
  features {}
  client_id       = "21d5c04f-85d0-4397-a417-22108e9fc6d8"
  client_secret   = "4UG8Q~x-k-F-7BncXalwIkd8bNas3N8LyvIpeaEz"
  tenant_id       = "37c599a4-184b-496f-a6b1-9a8d8bbe40ba"
  subscription_id = "b76fefda-dd9b-4b27-9231-0cb72e202232"
}
