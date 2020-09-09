terraform {
  required_version = "~> 0.12.9"

  backend "s3" {
    bucket  = "willfarley-hashicorp-tfstate"
    key     = "tfstate/willfarley-hashicorp.tfstate"
    region  = "eu-west-2"
  }
}
