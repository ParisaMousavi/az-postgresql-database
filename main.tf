resource "azurerm_postgresql_server" "this" {
  name                         = var.server_name
  location                     = var.location
  resource_group_name          = var.resource_group_name
  sku_name                     = var.server_sku_name
  storage_mb                   = var.storage_mb
  backup_retention_days        = var.backup_retention_days
  geo_redundant_backup_enabled = var.geo_redundant_backup_enabled
  auto_grow_enabled            = var.auto_grow_enabled
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password
  version                      = var.version
  ssl_enforcement_enabled      = var.ssl_enforcement_enabled
  tags = merge(
    var.additional_tags,
    {
      created-by = "iac-tf"
    },
  )
}


resource "azurerm_postgresql_database" "this" {
  for_each = { for db in var.dbs :
    db.name => { charset = db.charset, collation = db.collation }
  }
  name                = each.key
  resource_group_name = var.resource_group_name
  server_name         = azurerm_postgresql_server.this.name
  charset             = each.value.charset
  collation           = each.value.collation
}
