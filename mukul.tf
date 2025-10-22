terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.47.0"
    }
  }
}

provider "azurerm" {
  features {

  }
  subscription_id = "b398fea1-2f06-4948-924a-121d4ed265b0"
}


resource "azurerm_resource_group" "rg" {
  name     = "mukul-rg"
  location = "eastus"

}

resource "azurerm_storage_account" "stg" {
    name = "mukulstg"
    location = "Central India"
    resource_group_name = "mukul-rg"
    account_tier = "Standard"
    account_replication_type = "LRS"
  
}


resource "azurerm_resource_group" "rg2" {
  name     = "mukul-rg2"
  location = "eastus"

}

resource "azurerm_storage_account" "stg1" {
    name = "mukulstg2"
    location = "Central India"
    resource_group_name = azurerm_resource_group.rg2.name
    account_tier = "Standard"
    account_replication_type = "LRS"
  
}



resource "azurerm_resource_group" "rg3" {
  name     = "mukul-rg3"
  location = "eastus"

}

resource "azurerm_storage_account" "stg5" {
    depends_on = [ azurerm_resource_group.rg3 ]
    name = "mukulstg5"
    location = "Central India"
    resource_group_name = "mukul-rg3"
    account_tier = "Standard"
    account_replication_type = "LRS"
  
}


