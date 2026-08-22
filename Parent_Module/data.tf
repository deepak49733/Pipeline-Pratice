data "azurerm_subnet" "deepak_subnet" {
  name                 = "deepak_subnet"
  virtual_network_name = "deepak_vnet"
  resource_group_name  = "deepak_rg"
}

data "azurerm_network_interface" "deepak_nic" {
  name                = "deepak_nic"
  resource_group_name = "deepak_rg"
}