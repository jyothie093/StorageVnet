resource "azurerm_resource_group" "main" {
  name     = var.resource_group
  location = var.location
}
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  address_space       = [var.address_space]
}
  resource "azurerm_subnet" "subnet" {
    for_each             =var.subnet_names
    name                 = each.key
    virtual_network_name = azurerm_virtual_network.vnet.name
    resource_group_name  = azurerm_resource_group.main.name
    address_prefix       = each.value
 }