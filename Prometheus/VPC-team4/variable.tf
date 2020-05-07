
 variable "region" {}

 variable "vpc_cidr" {}

 variable "cidr_block" {}

 variable "cidr_block_public1" {}
 variable "cidr_block_public2" {}
 variable "cidr_block_public3" {}

 variable "cidr_block_private1" {}
 variable "cidr_block_private2" {}
 variable "cidr_block_private3" {}

 variable "tags" {
     type = "map"
 }
 variable "region_name" {}
 variable "az1" {}
 variable "az2" {}
 variable "az3" {}