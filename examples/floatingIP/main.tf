#####################################################
# Floating IP Configuration
# Copyright 2020 IBM
#####################################################

provider "ibm" {
}

data "ibm_resource_group" "resource_group" {
  name = (var.resource_group != null ? var.resource_group : "default")
}

module "fip" {
  source = "terraform-ibm-modules/vpc/ibm//modules/floatingIP"

  name                       = var.name
  resource_group_id          = data.ibm_resource_group.resource_group.id
  location                   = var.location
  target                     = (var.target != null ? var.target : null)
  tags                       = (var.tags != null ? var.tags : [])
}