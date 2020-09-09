output "vpc_id" {
  description = "The VPC ID"
  value = "${module.vpc.vpc_id}"
}

output "private_subnets" {
  description = "The private subnets"
  value = "${module.vpc.private_subnets}"
}

output "bastion_sg" {
  value = "${module.bastion.sg_id}"
}
