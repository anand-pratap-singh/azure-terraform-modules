module "resource_group_name" {
    source = "../child_module/azurerm_resource_group"
    rg_name = var.rg_name
}

module "virtual_network_name" {
    depends_on = [ module.resource_group_name ]
    source = "../child_module/azuererm_virtual_network"
    vnets = var.vnets
}

module "subnet" {
    depends_on = [ module.resource_group_name, module.virtual_network_name ]
    source = "../child_module/azurerm_subnet"
    subnets = var.subnets
}

module "public_ip" {
    depends_on = [ module.resource_group_name ]
    source = "../child_module/azurerm_public_ip"
    pips = var.pips
  
}


