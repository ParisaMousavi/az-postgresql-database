output "server_id" {
  value = azurerm_postgresql_server.this.id
}

output "server_name" {
  value = azurerm_postgresql_server.this.name
}

output "dbs" {
  value = azurerm_postgresql_database.this
}
