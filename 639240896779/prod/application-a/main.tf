# Network data source
data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "willfarley-hashicorp-tfstate"
    key    = "tfstate/willfarley-hashicorp.tfstate"
    region = "eu-west-2"
  }
}


### Application
module "application" {
  source = "git::ssh://git@github.com/willfarley/tf-application"

  application_ami_id = "${var.application_ami}"
  application_instance_type = "${var.application_instance_type}"
  application_ssh_key_name = "${var.application_ssh_key_name}"
  application_subnet_id = "${data.terraform_remote_state.network.outputs.private_subnets[0]}"
  application_vpc_id = "${data.terraform_remote_state.network.outputs.vpc_id}"
  bastion_sg = "${data.terraform_remote_state.network.outputs.bastion_sg}"

}
