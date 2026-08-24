rg_name = {
  rg1 = {
    name     = "rg-dev-01"
    location = "westus"
  }

  rg2 = {
    name     = "rg-prod-01"
    location = "westus"
  }
  rg3 = {
    name     = "rg-prod-03"
    location = "westus"
  }


}

vnets = {
  vnet1 = {
    vnetname            = "vnet_dev_01"
    resource_group_name = "rg-dev-01"
    location            = "westus"
    address_space       = ["10.143.0.0/16"]

  }
}

subnets = {
  subnet1 = {
    name                 = "subnet_dev_01"
    virtual_network_name = "vnet_dev_01"
    resource_group_name  = "rg-dev-01"
    address_prefixes     = ["10.143.1.0/24"]
  }
  subnet2 = {
    name                 = "subnet_dev_02"
    virtual_network_name = "vnet_dev_01"
    resource_group_name  = "rg-dev-01"
    address_prefixes     = ["10.143.2.0/24"]
  }
}

pips = {
  pip1 = {
    name                = "frontend_vm_pip"
    resource_group_name = "rg-dev-01"
    location            = "westus"
    allocation_method   = "Dynamic"
  }
  pip2 = {
    name                = "backend_vm_pip"
    resource_group_name = "rg-dev-01"
    location            = "westus"
    allocation_method   = "Dynamic"
  }
}
