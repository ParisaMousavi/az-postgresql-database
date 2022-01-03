//
// this file should contain all your resources
//
resource "azurerm_postgresql_database" "dbs" {
  count               = length(var.db_names)
  name                = var.db_names[count.index]
  resource_group_name = var.resource_group_name
  server_name         = var.server_name
  charset             = var.db_charset
  collation           = var.db_collation
}
