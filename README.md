This Terraform Module creates, manages and deploys an Microsoft Azure PostgreSQL Database on a PostgreSQL Server in the Interhyp Cloud Infrastructure

Please update this README with 
``terraform-docs markdown .``
and format all code with 
``terraform fmt -recursive``
after making changes to the modul.

***
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | n/a |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_postgresql_database.dbs](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_database) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_db_charset"></a> [db\_charset](#input\_db\_charset) | Specifies the Charset for the PostgreSQL Database, which needs to be a valid PostgreSQL Charset. Changing this forces a new resource to be created. | `string` | `"UTF8"` | no |
| <a name="input_db_collation"></a> [db\_collation](#input\_db\_collation) | Specifies the Collation for the PostgreSQL Database, which needs to be a valid PostgreSQL Collation. Note that Microsoft uses different notation - en-US instead of en\_US. Changing this forces a new resource to be created. | `string` | `"de-DE"` | no |
| <a name="input_db_names"></a> [db\_names](#input\_db\_names) | The list of names of the PostgreSQL Database, which needs to be a valid PostgreSQL identifier. Changing this forces a new resource to be created. | `list(string)` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the resource group as exported by the az-resourcegroup module. | `string` | n/a | yes |
| <a name="input_resource_long_name"></a> [resource\_long\_name](#input\_resource\_long\_name) | (provided by Terragrunt) | `string` | n/a | yes |
| <a name="input_server_name"></a> [server\_name](#input\_server\_name) | Names of the PostgreSQL Database Server, which needs to be a valid PostgreSQL identifier. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (provided by Terragrunt) | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_database_ids"></a> [database\_ids](#output\_database\_ids) | The list of all database resource ids |

***
## References

[Azure PostgreSQL Database Documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_database)