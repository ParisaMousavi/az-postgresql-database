variable "server_name" {
  type = string
}

variable "db_names" {
  type = list(string)
}

variable "charset" {
  type    = string
  default = "UTF8"
}

variable "collation" {
  type    = string
  default = "de-DE"
}

variable "name" {
  type = string
}

variable "resource_group_name" {
  type = string
}
