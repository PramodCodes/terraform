resource "aws_instance" "example" {
  ami           = "ami-12345678"
  instance_type = var.instance_type
}
# terraform.tfvars if nothing else is passed
# if a tfvars file is called the file takes precedence
