<!-- BEGIN_TF_DOCS -->
# wanted-cloud/terraform-module-skeleton

Some descirption of the module.

## Requirements

The following requirements are needed by this module:

- <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) (>= 1.9)

- <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) (>=3.113.0)

## Providers

The following providers are used by this module:

- <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) (>=3.113.0)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [azurerm_public_ip.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) (resource)
- [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) (data source)

## Required Inputs

The following input variables are required:

### <a name="input_public_ip_name"></a> [public\_ip\_name](#input\_public\_ip\_name)

Description: The name of the public IP address.

Type: `string`

### <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name)

Description: The name of the resource group in which to create the public IP address.

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_allocation_method"></a> [allocation\_method](#input\_allocation\_method)

Description: value of the allocation method for the public IP address.

Type: `string`

Default: `"Dynamic"`

### <a name="input_metadata"></a> [metadata](#input\_metadata)

Description: Module metadata object to give user possibility to override default module values.

Type:

```hcl
object({
    default_tags             = optional(map(string), {})
    resource_timeouts        = optional(map(map(string)), {})
    validator_error_messages = optional(map(string), {})
    validator_expressions    = optional(map(string), {})
  })
```

Default: `{}`

### <a name="input_sku"></a> [sku](#input\_sku)

Description: The SKU of the Public IP. Possible values are Basic and Standard.

Type: `string`

Default: `"Basic"`

### <a name="input_sku_tier"></a> [sku\_tier](#input\_sku\_tier)

Description: The Tier of the Public IP. Possible values are Regional and Global.

Type: `string`

Default: `"Regional"`

### <a name="input_tags"></a> [tags](#input\_tags)

Description: Key value pairs of custom tags to be applied to the module resources.

Type: `map(string)`

Default: `{}`

## Outputs

The following outputs are exported:

### <a name="output_public_ip_address"></a> [public\_ip\_address](#output\_public\_ip\_address)

Description: Object of the public IP address.

Created by WANTED.solutions s.r.o.
---
<sup><sub>_2024 &copy; All rights reserved - WANTED.solutions s.r.o. [<@wanted-solutions>](https://github.com/wanted-solutions)_</sub></sup>
<!-- END_TF_DOCS -->