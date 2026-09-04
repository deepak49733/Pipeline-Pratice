rg = {
  rg1 = {
    name     = "deepak_rg_prod"
    location = "East US"
  }
}

vnet = {
  vnet1 = {
    name                = "deepak_vnet_prod"
    location            = "East US"
    resource_group_name = "deepak_rg_prod"
    address_space       = ["10.1.0.0/16"]
  }
}

subnet = {
  subnet1 = {
    name                 = "deepak_subnet_prod"
    resource_group_name  = "deepak_rg_prod"
    virtual_network_name = "deepak_vnet_prod"
    address_prefixes     = ["10.1.1.0/24"]
  }
}

nic = {
  nic1 = {
    name                = "deepak_nic_prod"
    location            = "East US"
    resource_group_name = "deepak_rg_prod"
    ip_configuration = {
      name                          = "internal"
      private_ip_address_allocation = "Dynamic"
    }
  }
}
