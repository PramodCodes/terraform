resource "aws_instance" "example" {
  ami           = "ami-12345678"
  instance_type = var.instance_type
}
# command line vars take precedence over env vars
# terraform.tfvars if nothing else is passed
# if a tfvars file is called the file takes precedence
# if terraform.tfvars and env var is present terraform.tfvars takes precedence
# if terraform.tfvars is abscent and custom.tfvars is present and env var is present , env var takes precedence (if its not passed through command line)
# if env vars is present and terraform.tfvars is abscent then env var takes precendence 
