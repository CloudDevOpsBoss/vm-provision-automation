resource_group_name = "Sai-Demo-RG01"

location = "East US"

vnet_name = "vnet-sai-demo-eastus-01"

vnet_address_space = [
  "10.10.10.0/24"
]

dev_subnet_name    = "Dev-Subnet"
dev_subnet_address = "10.10.10.0/26"

qa_subnet_name    = "QA-Subnet"
qa_subnet_address = "10.10.10.64/26"

prod_subnet_name    = "Prod-Subnet"
prod_subnet_address = "10.10.10.128/26"

poc_subnet_name    = "POC-Subnet"
poc_subnet_address = "10.10.10.192/26"

tags = {
  Owner       = "Sai"
  Environment = "Demo"
  Project     = "Azure-Network"
  ManagedBy   = "Terraform"
  CostCenter  = "IT"
  Department  = "Cloud"
}