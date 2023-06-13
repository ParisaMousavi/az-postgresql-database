
variable "server_name" {
  type = string
}


variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}
variable "server_sku_name" {
  type    = string
  default = "B_Gen5_2"
}

variable "storage_mb" {
  type    = number
  default = 5120
}

variable "backup_retention_days" {
  type    = number
  default = 7
}
variable "geo_redundant_backup_enabled" {
  type    = bool
  default = false
}

variable "auto_grow_enabled" {
  type    = bool
  default = true
}

variable "administrator_login" {
  type    = string
  default = "psqladmin"
}

variable "administrator_login_password" {
  type    = string
  default = "H@Sh1CoR3!"
}

variable "server_version" {
  type    = string
  default = "11"
}

variable "ssl_enforcement_enabled" {
  type    = bool
  default = true
}

variable "dbs" {
  type = list(object({
    name      = string
    charset   = optional(string, "UTF8")
    collation = optional(string,"de-DE")
  }))
}

variable "additional_tags" {
  default     = {}
  description = "Additional resource tags"
  type        = map(string)
}