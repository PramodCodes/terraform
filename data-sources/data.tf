data "aws_ami" "Centos8" {
    owners = ["973714476881"]
    most_recent = true
    
     filter {
    name   = "name"
    values = ["Centos-8-DevOps-Practice"]
    }
    filter {
    name   = "root-device-type"
    values = ["ebs"]
    }

    filter {
    name   = "virtualization-type"
    values = ["hvm"]
    }
}

data "aws_ami" "aws-linux-2" {
    owners = ["amazon"]
    most_recent = true
    
     filter {
    name   = "name"
    values = ["al2023-ami-2023.6.20241212.0-kernel-6.1*"]
    }
    filter {
    name   = "root-device-type"
    values = ["ebs"]
    }

    filter {
    name   = "virtualization-type"
    values = ["hvm"]
    }
}

# getting default vpc

data "aws_vpc" "default_vpc" {
  default = true
}