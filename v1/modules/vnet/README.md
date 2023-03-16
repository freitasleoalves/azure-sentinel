<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_network_security_group.nsg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_subnet.snet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `""` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | n/a | `string` | `""` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | `""` | no |
| <a name="input_snet_address_prefixes"></a> [snet\_address\_prefixes](#input\_snet\_address\_prefixes) | n/a | `string` | `""` | no |
| <a name="input_suffix"></a> [suffix](#input\_suffix) | n/a | `string` | `""` | no |
| <a name="input_vnet_address_space"></a> [vnet\_address\_space](#input\_vnet\_address\_space) | n/a | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_snet_id"></a> [snet\_id](#output\_snet\_id) | Object with values of the created snet |
| <a name="output_vnet"></a> [vnet](#output\_vnet) | Object with values of the created vnet |
<!-- END_TF_DOCS --><!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_network_security_group.nsg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_subnet.snet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `""` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | n/a | `string` | `""` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | `""` | no |
| <a name="input_snet_address_prefixes"></a> [snet\_address\_prefixes](#input\_snet\_address\_prefixes) | n/a | `string` | `""` | no |
| <a name="input_suffix"></a> [suffix](#input\_suffix) | n/a | `string` | `""` | no |
| <a name="input_vnet_address_space"></a> [vnet\_address\_space](#input\_vnet\_address\_space) | n/a | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_snet_id"></a> [snet\_id](#output\_snet\_id) | Object with values of the created snet |
| <a name="output_vnet"></a> [vnet](#output\_vnet) | Object with values of the created vnet |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
