# Resource Group/Location
location        = "eastus2"
resource_group  = "projectrg"

# App Service Plan & App Service
application_type = "python"
resource_type    = "linux"
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

