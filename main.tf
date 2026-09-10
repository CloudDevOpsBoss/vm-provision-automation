resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}
resource "azurerm_resource_group" "rg1" {
  name     = var.name2
  location = var.location2
}
