provider "aws" {
  region = "us-east-1"
}

terraform {
    backend "s3" {
    bucket = "g73-techchallenge-infra"
    key    = "k8s/state/terraform.tfstate"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
