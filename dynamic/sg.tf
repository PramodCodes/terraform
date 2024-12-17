resource "aws_security_group" "roboshop-all" { #this is terraform name, for terraform reference only
    name        = "dynamic_demo"
    description = "dynamic_demo"
    #vpc_id      = aws_vpc.main.id

  dynamic ingress { # ingress became dynamic ingress
      for_each = var.ingress_data #from variable
      content{
          description      = ingress.value["description"]
          from_port        = ingress.value["from_port"]
          to_port          = ingress.value["to_port"]
          protocol         = ingress.value["protocol"]
          cidr_blocks      = ingress.value["cidr_blocks"]        
      }
    }
    
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    }
    tags = {
        Name = "dynamic-demo"
    }
}