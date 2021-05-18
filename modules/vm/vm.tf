resource "azurerm_network_interface" "test" {
  name                = "${var.application_type}-${var.resource_type}-nic"
  location            = var.location
  resource_group_name = var.resource_group

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = var.public_ip_address_id
  }
}

resource "azurerm_linux_virtual_machine" "test" {
  name                  = "${var.application_type}-${var.resource_type}-vm"
  location              = var.location
  resource_group_name   = var.resource_group
  size                  = "Standard_B1s"
  admin_username        = "adminuser"
  network_interface_ids = [azurerm_network_interface.test.id,]
  admin_ssh_key {
    username   = "adminuser"
    # public_key = "${var.secret_file}"
    public_key =  file(var.fileloc)
  }
  os_disk {
    caching               = "ReadWrite"
    storage_account_type  = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
