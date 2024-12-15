resource "aws_instance" "web" {
  ami           = var.ami_id   # Centos-8-DevOps-Practice
  instance_type = "t2.micro"
#   vpc_security_group_ids = [ aws_security_group.roboshop-all.id ]

  tags = {
    Name = "roboshop"
  }
}