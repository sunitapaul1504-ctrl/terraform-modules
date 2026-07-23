resource "azurerm_virtual_network" "vn"{
    for_each = var.vnets
    name = each.value.name
    resource_group_name = each.value.rg
    location= each.value.location
    address_space = each.value.ads
}