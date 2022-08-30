terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.27.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
  endpoints {
sts = "https://sts.eu-west-1.amazonaws.com"
}
assume_role {
role_arn = "role_name value"
session_name = "role_session_name"
}
}