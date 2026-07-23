resource "azurerm_storage_container" "akhilesh_container" {
  for_each = var.storage_containers
  name                  = each.value.name
  storage_account_id    = data.azurerm_storage_account.akhilesh_storagedata.id
  container_access_type = each.value.container_access_type
}
data "azurerm_storage_account" "akhilesh_storagedata" {
  name                = "akhileshstorage1"
  resource_group_name = data.azurerm_resource_group.rgdata.name
}
data "azurerm_resource_group" "rgdata" {
  name = "akhilesh_RG"
}