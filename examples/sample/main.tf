terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  default_tags {
    tags = var.default_tags
  }
}


module "kms" {
  source   = "arul-ap/kms/aws"
  org      = "abc"
  proj     = "x"
  env      = "dev"
  cmk_keys = {}
}

