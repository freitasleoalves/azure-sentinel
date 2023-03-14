###############################################################################
# Virtual Network
###############################################################################
resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-${var.prefix}-${var.suffix}"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.vnet_address_space
}

###############################################################################
# Subnets
###############################################################################
resource "azurerm_subnet" "snet" {
  name                 = "snet-${var.prefix}-${var.suffix}"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.snet_address_prefixes
  service_endpoints    = ["Microsoft.Storage"]
}

###############################################################################
# Network Security Groups
###############################################################################
resource "azurerm_network_security_group" "nsg" {
  name                = "nsg-${var.prefix}-${var.suffix}"
  location            = var.location
  resource_group_name = var.resource_group_name
}

###############################################################################
# Route Tables
###############################################################################
# resource "azurerm_route_table" "rt" {
#   name                          = "rt-${var.prefix}-${local.suffix}"
#   location                      = var.location
#   resource_group_name           = var.resource_group_name
#   disable_bgp_route_propagation = false

#   route {
#     name                   = "Firewall"
#     address_prefix         = "0.0.0.0/0"
#     next_hop_type          = "VirtualAppliance"
#     next_hop_in_ip_address = var.firewall_private_ip
#   }

#   dynamic "route" {
#     for_each = { for route in local.vpn_routes : route.name => route }
#     content {
#       name                   = route.value.name
#       address_prefix         = route.value.address_prefix
#       next_hop_type          = "VirtualAppliance"
#       next_hop_in_ip_address = var.firewall_private_ip
#     }
#   }

#   dynamic "route" {
#     for_each = { for vnet in var.vnets : vnet.name => vnet if vnet.name != azurerm_virtual_network.vnet.name && length(regexall("connectivity", vnet.name)) == 0 }
#     content {
#       name                   = "route-to-${route.value.name}"
#       address_prefix         = route.value.address_space
#       next_hop_type          = "VirtualAppliance"
#       next_hop_in_ip_address = var.firewall_private_ip
#     }
#   }

#   lifecycle {
#     ignore_changes = all
#   }
# }

###############################################################################
# Network Associations
###############################################################################
# resource "azurerm_subnet_network_security_group_association" "default" {
#   subnet_id                 = azurerm_subnet.snet.id
#   network_security_group_id = azurerm_network_security_group.nsg.id
# }

# resource "azurerm_subnet_route_table_association" "default" {
#   subnet_id      = azurerm_subnet.snet.id
#   route_table_id = azurerm_route_table.rt.id
# }