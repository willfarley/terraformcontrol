### VPC
module "vpc" {
  source = "git::ssh://git@github.com/terraform-aws-modules/terraform-aws-vpc?ref=v2.17.0"

  name = "${var.vpc_name}"
  cidr = "${var.global_cidr}"
  azs             = "${var.global_az}"
  private_subnets = "${var.global_private_subnets}"
  public_subnets  = "${var.global_public_subnets}"

  enable_nat_gateway = "${var.vpc_nat}"

  tags = {
    Orchestration = "${var.tag_orchestration}"
    Environment   = "${var.tag_environment}"
    Owner         = "${var.tag_owner}"
  }
}

## Bastion
module "bastion" {
  source = "git::ssh://git@github.com/willfarley/tf-bastion?ref=v1.0"

  bastion_ami_id = "${var.bastion_ami_id}"
  bastion_instance_type = "${var.bastion_instance_type}"
  bastion_ssh_key_name = "${var.global_ssh_key_name}"
  bastion_subnet_id = "${module.vpc.public_subnets[0]}"
  bastion_vpc_id = "${module.vpc.vpc_id}"
  bastion_ssh_ingress_cidr = "${var.bastion_ssh_ingress_cidr}"

  bastion_tag_environment = "${var.tag_environment}"
  bastion_tag_orchestration = "${var.tag_orchestration}"
}
