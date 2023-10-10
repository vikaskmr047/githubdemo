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
  use_oidc = true

}
