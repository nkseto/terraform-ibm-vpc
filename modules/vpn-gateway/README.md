# VPN Gateway Module

This module is used to create a VPN Gateway

## Example Usage
```
data "ibm_resource_group" "resource_group" {
  name = (var.resource_group != null ? var.resource_group : "default")
}

module "vpn_gateway" {
  source = "terraform-ibm-modules/vpc/ibm//modules/vpn-gateway"

  name              = var.name
  resource_group_id = data.ibm_resource_group.resource_group.id
  subnet            = (var.subnet != null ? var.subnet : null)
  tags              = (var.tags != null ? var.tags : [])
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name                              | Description                                           | Type   | Default | Required |
|-----------------------------------|-------------------------------------------------------|--------|---------|----------|
| name | Name of the VPN Gateway | string | n/a | yes |
| resource\_group\_id | ID of the resource group | string | n/a | no |
| subnet | Subnet id for the Gateway | string | n/a | yes |
| tags | List of tags to attach  | list(string) | n/a | no |

## Outputs

| Name | Description |
|------|-------------|
| vpn\_gateway\_id | The ID of the VPN Gateway |