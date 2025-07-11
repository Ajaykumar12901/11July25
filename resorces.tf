resource "azurerm_resource_group" "rg_tata" {
    count =length(var.resource_group)
    name = var.resource_group[count.index]
    location = "eastus"
  
}

# resource "azurerm_storage_account" "stg-tata" {
#     count = 3
#     # depends_on = [ azurerm_resource_group.rg-tata ]
#     name = "tatastg${count.index}"
#     location = "eastus"
#     resource_group_name = azurerm_resource_group.rg_tata[count.index].name
#     account_tier = "Standard"
#     account_replication_type = "LRS"
# }

# resource "azurerm_storage_container" "cont_tata" {
#     # depends_on = [ azurerm_storage_account.stg-tata ]
#     count = 3
#     name = "cont1${count.index}"
#     storage_account_id = azurerm_storage_account.stg-tata[count.index].id
#     container_access_type = "private"
  
# }


resource "azurerm-resource_group" "angad" {
       name = "nandubhai"
       location = "eastus"
}
