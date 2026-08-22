module "azurerm_resource_group" {
  source = "../Child_Module/azurerm_resource_group"
  rg     = var.rg
}

module "azurerm_vnet" {
  source = "../Child_Module/azurerm_vnet"
  vnet   = var.vnet
}

module "azurerm_subnet" {
  source = "../Child_Module/azurerm_subnet"
  subnet = var.subnet
}

module "azurerm_nic" {
  depends_on = [module.azurerm_subnet]
  source     = "../Child_Module/azurerm_nic"
  nic_deepak = var.nic
  subnet_id  = data.azurerm_subnet.deepak_subnet.id
}


