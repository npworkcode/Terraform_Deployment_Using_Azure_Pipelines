provider "azure" {
  tenant_id       = var.ARM_TENANT_ID
  subscription_id = var.ARM_SUBSCRIPTION_ID
  client_id       = var.ARM_CLIENT_ID
  client_secret   = var.ARM_CLIENT_SECRET
  features {}
}

terraform {
  backend "azurerm" {
  }
}

module "resource_group" {
  source               = "./modules/resource_group"
  resource_group       = var.resource_group
  location             = var.location
}
module "network" {
  source               = "./modules/network"
  address_space        = var.address_space
  location             = var.location
  virtual_network_name = var.virtual_network_name
  application_type     = var.application_type
  resource_group       = module.resource_group.resource_group_name
  resource_type        = var.resource_type
  address_prefix_test  = var.address_prefix_test
  tags                 = var.tags
}

module "nsg-test" {
  source              = "./modules/networksecuritygroup"
  location            = var.location
  application_type    = var.application_type
  resource_group      = module.resource_group.resource_group_name
  subnet_id           = module.network.subnet_id_test
  address_prefix_test = var.address_prefix_test
  resource_type       = var.resource_type
  tags                = var.tags
}

module "appservice" {
  source           = "./modules/appservice"
  location         = var.location
  application_type = var.application_type
  resource_type    = var.resource_type
  resource_group   = module.resource_group.resource_group_name
  kind             = var.kind
  reserved         = var.reserved
  tags             = var.tags
}
module "publicip" {
  source           = "./modules/publicip"
  location         = var.location
  application_type = var.application_type
  resource_type    = var.resource_type
  resource_group   = module.resource_group.resource_group_name
}
module "vm" {
  source                = "./modules/vm"
  subnet_id             = module.network.subnet_id_test
  public_ip_address_id  = module.publicip.public_ip_address_id
  resource_group        = module.resource_group.resource_group_name
  location              = var.location
  application_type      = var.application_type
  resource_type         = var.resource_type
  fileloc               = var.fileloc
}