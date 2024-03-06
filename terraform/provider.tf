terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.14"
    }
    doppler = {
      source  = "DopplerHQ/doppler"
      version = ">= 1.2.3"
    }
  }
  backend "s3" {
    bucket = "vast-data-bronze"
    region = "us-gov-west-1"

    key = "terraform/tfstate/spacelift-poc/dev.tfstate"

    dynamodb_table = "tf-state-locks"
    encrypt        = true
  }
}
