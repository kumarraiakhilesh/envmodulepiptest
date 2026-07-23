resource "azurerm_resource_group" "akhilesh_RG" {
  for_each = var.resource_groups
  name     = each.value.name
  location = each.value.location
}