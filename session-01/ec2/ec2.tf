
#aws provider version 5.81.0
resource "aws_instance" "web" {
  ami           = "ami-0b4f379183e5706b9"   # Centos-8-DevOps-Practice
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.roboshop-all.id ]

  tags = {
    Name = "roboshop"
  }
}

resource "aws_security_group" "roboshop-all" {
  name        = var.sg-name # what ever we give here will be visible in aws
  description = "Allow TLS inbound traffic"
  tags = {
    Name = "roboshop"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.roboshop-all.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = var.inbound-from-port
  ip_protocol       = "tcp"
  to_port           = var.inbound-from-port
  
  tags = {
    Name = "roboshop"
  }
}

resource "aws_vpc_security_group_egress_rule" "allow_out_traffic" {
  security_group_id = aws_security_group.roboshop-all.id

  cidr_ipv4         = "0.0.0.0/0"
  from_port         = var.outbound-from-to-port
  ip_protocol       = "tcp"
  to_port           = var.outbound-from-to-port
  
    tags = {
    Name = "roboshop"
  }
}
