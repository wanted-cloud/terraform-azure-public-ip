/**
 * # wanted-cloud/terraform-azure-public-ip
 *
 * Some descirption of the module.
 *
 */
resource "azurerm_public_ip" "this" {
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location != "" ? var.location : data.azurerm_resource_group.this.location
  allocation_method   = var.allocation_method

  sku      = var.sku
  sku_tier = var.sku_tier

  tags = merge(local.metadata.tags, var.tags)

  timeouts {
    create = try(
      local.metadata.resource_timeouts["azurerm_public_ip"]["create"],
      local.metadata.resource_timeouts["default"]["create"]
    )
    read = try(
      local.metadata.resource_timeouts["azurerm_public_ip"]["read"],
      local.metadata.resource_timeouts["default"]["read"]
    )
    update = try(
      local.metadata.resource_timeouts["azurerm_public_ip"]["update"],
      local.metadata.resource_timeouts["default"]["update"]
    )
    delete = try(
      local.metadata.resource_timeouts["azurerm_public_ip"]["delete"],
      local.metadata.resource_timeouts["default"]["delete"]
    )
  }
}