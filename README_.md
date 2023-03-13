<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.46.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_log_analytics"></a> [log\_analytics](#module\_log\_analytics) | ./modules/log-analytics | n/a |
| <a name="module_resource_groups"></a> [resource\_groups](#module\_resource\_groups) | ./modules/resource-groups | n/a |
| <a name="module_storage_account"></a> [storage\_account](#module\_storage\_account) | ./modules/storage-account | n/a |
| <a name="module_vnet"></a> [vnet](#module\_vnet) | ./modules/vnet_talvez | n/a |
| <a name="module_workspace"></a> [workspace](#module\_workspace) | ./modules/workspace | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env"></a> [env](#input\_env) | n/a | `string` | `""` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | n/a | `string` | `""` | no |
| <a name="input_resourcegroup"></a> [resourcegroup](#input\_resourcegroup) | This variable set values for resources that uses a same location and need use a resource group name to deploy | <pre>object({<br>    #rg_name     = string<br>    rg_location = string<br>    tags        = map(string)<br>  })</pre> | <pre>{<br>  "rg_location": "",<br>  "tags": {<br>    "": ""<br>  }<br>}</pre> | no |
| <a name="input_vnet"></a> [vnet](#input\_vnet) | Attributes needed for vnet implementation | <pre>object({<br>    vnet_address_space    = list(string)<br>    snet_address_prefixes = list(string)<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rg_location"></a> [rg\_location](#output\_rg\_location) | Object with values of the created vnet |
<!-- END_TF_DOCS -->