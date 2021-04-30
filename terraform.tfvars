# Azure subscription vars
subscription_id = var.ARM_SUBSCRIPTION_ID
client_id       = var.ARM_CLIENT_ID
client_secret   = var.ARM_CLIENT_SECRET
tenant_id       = var.ARM_TENANT_ID

# Resource Group/Location
location        = "eastus2"
resource_group  = "pythonRG"

# App Service Plan & App Service
application_type = "Python"
resource_type    = "Linux"
kind             = "Linux"
reserved         = "true"


# Network
address_space           = ["10.5.0.0/16"]
address_prefix_test     = ["10.5.1.0/24"]
virtual_network_name    = "terraform-network"

# Tags
tags = {
    project = 3
    type    = "CI-CD"
    env     = "Dev"
}

