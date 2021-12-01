variable "server_name" {
  description = "Names of the PostgreSQL Database Server, which needs to be a valid PostgreSQL identifier. Changing this forces a new resource to be created."
  type        = string
}

variable "db_names" {
  description = "The list of names of the PostgreSQL Database, which needs to be a valid PostgreSQL identifier. Changing this forces a new resource to be created."
  type        = list(string)
}

variable "db_charset" {
  description = "Specifies the Charset for the PostgreSQL Database, which needs to be a valid PostgreSQL Charset. Changing this forces a new resource to be created."
  type        = string
  default     = "UTF8"
}

variable "db_collation" {
  description = "Specifies the Collation for the PostgreSQL Database, which needs to be a valid PostgreSQL Collation. Note that Microsoft uses different notation - en-US instead of en_US. Changing this forces a new resource to be created."
  type        = string
  default     = "de-DE"
}
