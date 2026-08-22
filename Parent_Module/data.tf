# data "azurerm_subnet" "deepak_subnet" {
#   name                 = module.azurerm_subnet.subnet_name
#   resource_group_name  = module.azurerm_resource_group.rg_name
#   virtual_network_name = module.azurerm_vnet.vnet_name

# }
# data "azurerm_network_interface" "deepak_nic" {
#   name                = module.azurerm_nic.nic_name
#   resource_group_name = module.azurerm_resource_group.rg_name
# }
data "azurerm_subnet" "deepak_subnet" {
  name                 = "deepak_subnet"
  virtual_network_name = "deepak_vnet"
  resource_group_name  = "deepak_rg"

}
data "azurerm_network_interface" "deepak_nic" {
  name                = "deepak_nic"
  resource_group_name = "deepak_rg"
}