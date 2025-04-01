resource "azurerm_resource_group" "cst8918_rg" {
  name     = "${var.label_prefix}-a12-rg"
  location = "canadacentral"
}

# Define the virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = "${var.label_prefix}-A12Vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.cst8918_rg.location
  resource_group_name = azurerm_resource_group.cst8918_rg.name
}


# Define the subnet
resource "azurerm_subnet" "webserver" {
  name                 = "${var.label_prefix}-A12Subnet"
  resource_group_name  = azurerm_resource_group.cst8918_rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

