terraform {
  backend "s3" {
    bucket  = "willfarley-hashicorp-tfstate"
    key     = "tfstate/willfarley-hashicorp-application.tfstate"
    region  = "eu-west-2"
  }
}
