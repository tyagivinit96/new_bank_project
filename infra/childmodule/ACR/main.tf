
resource "azurerm_container_registry" "acr" {
    for_each = var.acr
  name                = each.value.acr_name
  resource_group_name = each.value.rg_name
  location            = each.value.acr_location
  sku                 = each.value.sku
  admin_enabled       = each.value.admin_enabled
  # georeplications {
  #   location                = each.value.geo_location
  #   zone_redundancy_enabled = each.value.zone_redundancy_enabled
  #   tags                    = {}
  # }
  # georeplications {
  #   location                = each.value.geo_location
  #   zone_redundancy_enabled = each.value.zone_redundancy_enabled
  #   tags                    = {}
  # }
}