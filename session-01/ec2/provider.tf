terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.81.0" # This is aws provider version not TF version
    }
  }
}

provider "aws" {
#   Configuration options
#   you will hanve an option to include your access key and secret access key here but
#    it poses a security issue (because this will be committed to github) so we use it in AWS CLI, Create a user in IAM 
    region = "us-east-1"
}