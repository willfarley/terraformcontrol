##### Global Variables #####
global_cidr = "10.0.0.0/16"
global_az = ["eu-west-2a","eu-west-2b","eu-west-2c"]
global_private_subnets = ["10.0.10.0/24","10.0.11.0/24","10.0.12.0/24"]
global_public_subnets = ["10.0.20.0/24","10.0.21.0/24","10.0.22.0/24"]

##### Tag Variables #####
tag_orchestration = "Terraform"
tag_environment = "Demo"
tag_owner = "willfarley"

##### VPC Variables #####
vpc_nat = "true"
vpc_name = "hashi-vpc"

##### Bastion Variables #####
bastion_ssh_ingress_cidr = "31.53.53.210/32"
