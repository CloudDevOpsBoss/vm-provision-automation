output "resource_group_name" {
  description = "Resource Group name"
  value       = azurerm_resource_group.main.name
}

output "resource_group_location" {
  description = "Resource Group location"
  value       = azurerm_resource_group.main.location
}

output "vnet_name" {
  description = "Virtual Network name"
  value       = azurerm_virtual_network.main.name
}

output "vnet_id" {
  description = "Virtual Network resource ID"
  value       = azurerm_virtual_network.main.id
}

output "vnet_address_space" {
  description = "Virtual Network address space"
  value       = azurerm_virtual_network.main.address_space
}

output "dev_subnet_name" {
  description = "Dev subnet name"
  value       = azurerm_subnet.dev.name
}

output "dev_subnet_address" {
  description = "Dev subnet address"
  value       = azurerm_subnet.dev.address_prefixes
}

output "qa_subnet_name" {
  description = "QA subnet name"
  value       = azurerm_subnet.qa.name
}

output "qa_subnet_address" {
  description = "QA subnet address"
  value       = azurerm_subnet.qa.address_prefixes
}

output "prod_subnet_name" {
  description = "Prod subnet name"
  value       = azurerm_subnet.prod.name
}

output "prod_subnet_address" {
  description = "Prod subnet address"
  value       = azurerm_subnet.prod.address_prefixes
}

output "poc_subnet_name" {
  description = "POC subnet name"
  value       = azurerm_subnet.poc.name
}

output "poc_subnet_address" {
  description = "POC subnet address"
  value       = azurerm_subnet.poc.address_prefixes
}