<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.46.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.46.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_log_analytics"></a> [log\_analytics](#module\_log\_analytics) | ./modules/log-analytics | n/a |
| <a name="module_resource_groups"></a> [resource\_groups](#module\_resource\_groups) | ./modules/resource-groups | n/a |
| <a name="module_storage_account"></a> [storage\_account](#module\_storage\_account) | ./modules/storage-account | n/a |
| <a name="module_workspace"></a> [workspace](#module\_workspace) | ./modules/workspace | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_log_analytics_workspace.log_analytics](https://registry.terraform.io/providers/hashicorp/azurerm/3.46.0/docs/data-sources/log_analytics_workspace) | data source |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.46.0/docs/data-sources/resource_group) | data source |
| [azurerm_storage_account.log](https://registry.terraform.io/providers/hashicorp/azurerm/3.46.0/docs/data-sources/storage_account) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env"></a> [env](#input\_env) | n/a | `string` | `""` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | n/a | `string` | `""` | no |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | n/a | `string` | `""` | no |
| <a name="input_sa_name"></a> [sa\_name](#input\_sa\_name) | n/a | `string` | `""` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->