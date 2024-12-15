resource "aws_instance" "web" {
  ami           = var.ami_id   # Centos-8-DevOps-Practice
  instance_type = var.instance_name == "MongoDB" ? "t3.small" : "t2.micro"
  tags = var.tags
}