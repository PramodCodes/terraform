resource "aws_instance" "web" {
  ami           = "ami-0b4f379183e5706b9"   # Centos-8-DevOps-Practice
  instance_type = "t2.micro"

  tags = {
    Name = "HelloTerraform"
  }
}