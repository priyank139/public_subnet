
resource "azurerm_subnet" "public_subnet" {
  count               = length(var.public_address_prefixes)
  name                 = "Subnet-${count.index}"
  resource_group_name  = var.resource_group_name
  virtual_network_name = element( var.vnet_name_pub, count.index)
  address_prefixes       = [ element(var.public_address_prefixes, count.index) ]
}

