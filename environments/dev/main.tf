provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-info-1758_ai"
    storage_account_name = "staistudiohu217832852473"
    container_name       = "tfstate-terraform"
    key                  = "dev.terraform.tfstate"
  }
}


resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.environment}-${var.location}"
  location = var.location
  tags     = var.tags
}

module "vnet" {
  source              = "../../modules/vnet"

  vnet_name       = "vnet-${var.environment}-${var.location}"
  resource_group_name       = azurerm_resource_group.rg.name
  location                  = var.location
  address_space             = var.vnet_address_space
  subnet_name               = var.subnet_name
  subnet_address_prefixes   = var.subnet_address_prefixes
  tags                      = var.tags
}

