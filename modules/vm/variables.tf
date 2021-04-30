variable "fileloc" {
    description = "The location of the SSH public key file for the VM"
    type = string
}

variable "subnet_id" {
    type = string
}

variable "public_ip_address_id" {
    type = string
}

variable "location" {}
variable  "resource_type" {}
variable "application_type" {}
variable "resource_group" {}
