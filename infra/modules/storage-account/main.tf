resource "azurerm_storage_account" "samain" {
  name                     = var.name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}


resource "azurerm_storage_container" "container_statefile_backend" {
  name                  = "featuretf"
  storage_account_id    = azurerm_storage_account.samain.id
  container_access_type = "private"
}