terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.91.0"
    }
  }
}
provider "azurerm" {
  features {}
}


resource "azurerm_resource_group" "myapp" {
  name     = "${var.prefix}-RG"
  location = var.location
  tags     = var.tags
}
