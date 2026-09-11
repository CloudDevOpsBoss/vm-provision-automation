resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location

  tags = var.tags
}

resource "azurerm_virtual_network" "main" {
  name                = var.vnet_name
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name

  address_space = var.vnet_address_space

  tags = var.tags
}

resource "azurerm_subnet" "dev" {
  name                 = var.dev_subnet_name
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name

  address_prefixes = [
    var.dev_subnet_address
  ]
}

resource "azurerm_subnet" "qa" {
  name                 = var.qa_subnet_name
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name

  address_prefixes = [
    var.qa_subnet_address
  ]
}

resource "azurerm_subnet" "prod" {
  name                 = var.prod_subnet_name
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name

  address_prefixes = [
    var.prod_subnet_address
  ]
}

resource "azurerm_subnet" "poc" {
  name                 = var.poc_subnet_name
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name

  address_prefixes = [
    var.poc_subnet_address
  ]
}

resource "azurerm_network_interface" "dev" {
  name                = var.nic_name
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name

  ip_configuration {
    name                          = "ipconfig-dev"
    subnet_id                     = azurerm_subnet.dev.id
    private_ip_address_allocation = "Static"
    private_ip_address            = var.private_ip_address
  }

  tags = var.tags
}