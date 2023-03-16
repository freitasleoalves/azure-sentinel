<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.46.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.4.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | 2.4.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_resource_groups"></a> [resource\_groups](#module\_resource\_groups) | ./modules/resource-groups | n/a |
| <a name="module_storage_account"></a> [storage\_account](#module\_storage\_account) | ./modules/storage-account | n/a |

## Resources

| Name | Type |
|------|------|
| [local_file.this](https://registry.terraform.io/providers/hashicorp/local/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env"></a> [env](#input\_env) | n/a | `string` | n/a | yes |
| <a name="input_filename"></a> [filename](#input\_filename) | n/a | `string` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | n/a | `string` | n/a | yes |
| <a name="input_rg_location"></a> [rg\_location](#input\_rg\_location) | This variable set values for resources that uses a same location and need use a resource group name to deploy | `string` | n/a | yes |
| <a name="input_sa_names_map"></a> [sa\_names\_map](#input\_sa\_names\_map) | n/a | <pre>map(object({<br>    name                     = string<br>    account_replication_type = string<br>  }))</pre> | n/a | yes |
| <a name="input_sa_names_premium"></a> [sa\_names\_premium](#input\_sa\_names\_premium) | n/a | `list(string)` | n/a | yes |
| <a name="input_sa_names_standard"></a> [sa\_names\_standard](#input\_sa\_names\_standard) | n/a | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(string)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->