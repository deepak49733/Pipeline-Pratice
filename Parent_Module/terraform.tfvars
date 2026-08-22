rg = {
  rg1 = {
    name     = "deepak_rg"
    location = "East US"
  }
}

vnet = {
  vnet1 = {
    name                = "deepak_vnet"
    location            = "East US"
    resource_group_name = "deepak_rg"
    address_space       = ["10.0.0.0/16"]
  }
}
subnet = {
  subnet1 = {
    name                 = "deepak_subnet"
    resource_group_name  = "deepak_rg"
    virtual_network_name = "deepak_vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

nic = {
  nic1 = {
    name                = "deepak_nic"
    location            = "East US"
    resource_group_name = "deepak_rg"
    ip_configuration = {
      name                          = "internal"
      subnet_id                     = "data.azurerm_subnet.deepak_subnet.id"
      private_ip_address_allocation = "Dynamic"
    }
  }
}
