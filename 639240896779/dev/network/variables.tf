##### Global Variables #####
variable "global_cidr" {
  description = "Global CIDR range of VPC"
}

variable "global_az" {
  description = "Global list of Availability Zones"
  type = "list"
}

variable "global_private_subnets" {
  description = "Global list of private subnets"
  type = "list"
}

variable "global_public_subnets" {
  description = "Global list of public subnets"
  type = "list"
}

variable "global_region" {
  description = "Region where to run Terraform in AWS"
  default = "eu-west-2"
}

variable "global_ssh_key_name" {
  default = "will-demo"
}

##### Tag Variables #####
variable "tag_orchestration" {
  description = "Tag for orchestration - example: Terraform"
}

variable "tag_environment" {
  description = "Tag for environment - example: Dev"
}

variable "tag_owner" {
  description = "Tag for owner - example: Will"
}

##### VPC Variables #####
variable "vpc_name" {
  description = "Name given to VPC resource"
}

variable "vpc_nat" {
  description = "Boolean for whether to add a NAT gateway to the VPC"
}

##### Bastion Variables #####
variable "bastion_ami_id" {
  default = "ami-00a1270ce1e007c27"
}

variable "bastion_instance_type" {
  default = "t2.micro"
}

variable "bastion_ssh_ingress_cidr" {
  description = "The ingress addresses to allow to the Bastion"
}
