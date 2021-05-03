# Azure GUIDS
variable "ARM_CLIENT_ID" {
    description = "Authentication information for the Service Principal for Terraform Application"
    type = string
    sensitive = true
}

variable "ARM_CLIENT_SECRET" {
    description = "Authentication information for the Service Principal for Terraform Application"
    type = string
    sensitive = true
}

variable "ARM_TENANT_ID" {
    description = "Authentication information for the Service Principal for Terraform Application"
    type = string
    sensitive = true
}

variable "ARM_SUBSCRIPTION_ID" {
    description = "Authentication information for the Service Principal for Terraform Application"
    type = string
    sensitive = true
}

# Resource Group/Location
variable "location" {}
variable "resource_group" {}
variable "application_type" {}
variable "resource_type" {}

# Network
variable "virtual_network_name" {}
variable "address_prefix_test" {}
variable "address_space" {}

# AppSerive
variable "kind" {}
variable "reserved" {}

# VM
variable "fileloc" {}
# Tags
variable "tags" {
    type    = map
}

