/**
 * # wanted-cloud/terraform-azure-public-ip
 *
 * Some descirption of the module.
 *
 */
resource "azurerm_public_ip" "this" {
  name                = var.public_ip_name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = data.azurerm_resource_group.this.location
  allocation_method   = var.allocation_method

  sku      = var.sku
  sku_tier = var.sku_tier

  tags = local.metadata.tags
}