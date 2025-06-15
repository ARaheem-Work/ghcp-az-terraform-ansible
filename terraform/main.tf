terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0" # Ensure latest provider version
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-ghcp-az-terraform-ansible"
    storage_account_name = "azterransi06142025a"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "app_rg" {
  name     = var.resource_group_name
  location = var.location
}


resource "azurerm_service_plan" "appserviceplan" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.app_rg.location
  resource_group_name = azurerm_resource_group.app_rg.name
  os_type             = "Linux"
  sku_name            = "F1" # Free shared tier
}


resource "azurerm_linux_web_app" "webapp" {
  name                = var.app_service_name
  location            = azurerm_resource_group.app_rg.location
  resource_group_name = azurerm_resource_group.app_rg.name
  service_plan_id     = azurerm_service_plan.appserviceplan.id

  site_config {
    always_on = false
  }
}