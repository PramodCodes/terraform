output "ami_id" {
  value = data.aws_ami.Centos8.id
}

output "aws_linix_id" {
  value = data.aws_ami.aws-linux-2.id
}

output "aws_vpc" {
  value = data.aws_vpc.default_vpc.id
}