<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.46.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | 2.4.0 |

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
| [local_file.this](https://registry.terraform.io/providers/hashicorp/local/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env"></a> [env](#input\_env) | n/a | `string` | `""` | no |
| <a name="input_filename"></a> [filename](#input\_filename) | n/a | `string` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | n/a | `string` | `""` | no |
| <a name="input_resourcegroup"></a> [resourcegroup](#input\_resourcegroup) | This variable set values for resources that uses a same location and need use a resource group name to deploy | <pre>object({<br>    rg_location = string<br>  })</pre> | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rg_location"></a> [rg\_location](#output\_rg\_location) | Object with values of the created vnet |
<!-- END_TF_DOCS -->