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

