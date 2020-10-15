#####################################################
# VPC Route
# Copyright 2020 IBM
#####################################################

variable "name" {
  description = "Name of the vpc Route"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "location" {
  description = "Route Zone"
  type        = string
}

variable "destination_cidr" {
  description = "Destination CIDR"
  type        = string
}

variable "next_hop" {
  description = "The IP address where network traffic is sent next"
  type        = string
}