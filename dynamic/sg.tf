
resource "aws_security_group" "dynamic_demoSG" {
  name        = "dynamic-demo"
  description = "dynamic demo"
  tags = {
    Name = "dynamic_demoSG"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  description = "Allow port 80"
  security_group_id = aws_security_group.dynamic_demoSG.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
  
  tags = {
    Name = "dynamic_demoSG"
  }
}
resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  description = "Allow port 443"
  security_group_id = aws_security_group.dynamic_demoSG.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
  
  tags = {
    Name = "dynamic_demoSG"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  description = "Allow port 22"
  security_group_id = aws_security_group.dynamic_demoSG.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
  
  tags = {
    Name = "dynamic_demoSG"
  }
}

resource "aws_vpc_security_group_egress_rule" "allow_out_traffic" {
  security_group_id = aws_security_group.dynamic_demoSG.id

  cidr_ipv4         = "0.0.0.0/0"
  from_port         = var.outbound-from-to-port
  ip_protocol       = "tcp"
  to_port           = var.outbound-from-to-port
  
    tags = {
    Name = "dynamic_demoSG"
  }
}
