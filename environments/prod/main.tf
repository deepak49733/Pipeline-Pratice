module "azurerm_resource_group" {
  source = "../../modules/azurerm_resource_group"
  rg     = var.rg
}

module "azurerm_vnet" {
  depends_on = [module.azurerm_resource_group]
  source     = "../../modules/azurerm_vnet"
  vnet       = var.vnet
}

module "azurerm_subnet" {
  depends_on = [module.azurerm_vnet]
  source     = "../../modules/azurerm_subnet"
  subnet     = var.subnet
}

module "azurerm_nic" {
  depends_on = [module.azurerm_subnet]
  source     = "../../modules/azurerm_nic"
  nic_deepak = var.nic
  subnet_id  = data.azurerm_subnet.deepak_subnet.id
}
