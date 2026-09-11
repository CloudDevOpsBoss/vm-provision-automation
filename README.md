# vm-provision-automation
End-to-End DevOps Project Flow Git → GitHub → Terraform → Azure DevOps → Azure VM Provisioning → Monitoring

#Project Requirement
Project Name: Automated Azure VM Provisioning using Terraform and Azure DevOps.


REQUIREMENT PHASE:
Creating Resource Group With Naming standard
Name = Sai-Demo-RG01
Location = eastus

Creating Virtula Network
Name = vnet-sai-demo-eastus-01
location = eastus

Address space is: 10.10.10.0/24

Creating 4 Subnets: 
--> Dev-Subnet : 10.10.10.0/26
--> QA-Subnet: 10.10.10.64/26
--> Prod-Subnet: 10.10.10.128/26
--> POC-Subnet : 10.10.10.192/26

Network Interface (NIC) and attach it to the Dev-Subnet.
A NIC does not get the subnet's entire address space.
The NIC gets one private IP address from the subnet.
Dev-Subnet:  10.10.10.0/26

 
