terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.29.0"
    }
  }
}

provider "azurerm" {
    features {
      
    }
  
  subscription_id = "6257007c-ec63-4876-8b6e-df96e10f0c83"
}
# terraform {
#   backend "azurerm" {
#     resource_group_name = "rg-tata"
#     storage_account_name = "tatastg"
#     container_name = "cont1"
#     key = "ajay.tfstate"
    
#   }
# }