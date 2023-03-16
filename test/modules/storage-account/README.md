<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |
| <a name="provider_null"></a> [null](#provider\_null) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_storage_account.log](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_account.map](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_account.premium](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [null_resource.sa_log_clear_cors](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.sa_log_cors_azur](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.sa_log_cors_microsoft](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `""` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | n/a | `string` | `""` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | `""` | no |
| <a name="input_sa_names_map"></a> [sa\_names\_map](#input\_sa\_names\_map) | n/a | <pre>map(object({<br>    name                     = string<br>    account_replication_type = string<br>  }))</pre> | n/a | yes |
| <a name="input_sa_names_premium"></a> [sa\_names\_premium](#input\_sa\_names\_premium) | n/a | `list(string)` | n/a | yes |
| <a name="input_sa_names_standard"></a> [sa\_names\_standard](#input\_sa\_names\_standard) | n/a | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(string)` | n/a | yes |
| <a name="input_virtual_network_subnet_ids"></a> [virtual\_network\_subnet\_ids](#input\_virtual\_network\_subnet\_ids) | n/a | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_storage_account_id"></a> [storage\_account\_id](#output\_storage\_account\_id) | Return storage account id. |
| <a name="output_storage_account_id_premium"></a> [storage\_account\_id\_premium](#output\_storage\_account\_id\_premium) | Return storage account id. |
<!-- END_TF_DOCS --><!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |
| <a name="provider_null"></a> [null](#provider\_null) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_storage_account.log](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_account.map](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_account.premium](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [null_resource.sa_log_clear_cors](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.sa_log_cors_azur](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.sa_log_cors_microsoft](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `""` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | n/a | `string` | `""` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | `""` | no |
| <a name="input_sa_names_map"></a> [sa\_names\_map](#input\_sa\_names\_map) | n/a | <pre>map(object({<br>    name                     = string<br>    account_replication_type = string<br>  }))</pre> | n/a | yes |
| <a name="input_sa_names_premium"></a> [sa\_names\_premium](#input\_sa\_names\_premium) | n/a | `list(string)` | n/a | yes |
| <a name="input_sa_names_standard"></a> [sa\_names\_standard](#input\_sa\_names\_standard) | n/a | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(string)` | n/a | yes |
| <a name="input_virtual_network_subnet_ids"></a> [virtual\_network\_subnet\_ids](#input\_virtual\_network\_subnet\_ids) | n/a | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_storage_account_id"></a> [storage\_account\_id](#output\_storage\_account\_id) | Return storage account id. |
| <a name="output_storage_account_id_premium"></a> [storage\_account\_id\_premium](#output\_storage\_account\_id\_premium) | Return storage account id. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
