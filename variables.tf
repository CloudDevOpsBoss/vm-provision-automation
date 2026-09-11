variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space of the Virtual Network"
  type        = list(string)
}

variable "dev_subnet_name" {
  description = "Development subnet name"
  type        = string
}

variable "dev_subnet_address" {
  description = "Development subnet CIDR"
  type        = string
}

variable "qa_subnet_name" {
  description = "QA subnet name"
  type        = string
}

variable "qa_subnet_address" {
  description = "QA subnet CIDR"
  type        = string
}

variable "prod_subnet_name" {
  description = "Production subnet name"
  type        = string
}

variable "prod_subnet_address" {
  description = "Production subnet CIDR"
  type        = string
}

variable "poc_subnet_name" {
  description = "POC subnet name"
  type        = string
}

variable "poc_subnet_address" {
  description = "POC subnet CIDR"
  type        = string
}

variable "tags" {
  description = "Tags to apply to Azure resources"
  type        = map(string)
}