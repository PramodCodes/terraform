locals {
 name = "pk"
 training = "terraform"
 get_instance_type =  var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] ==  "shipping" || var.instance_names[count.index] ==  "mysql" ? var.instance_t3-small : var.instance_t2-micro
 get_ip_address = [var.instance_names[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
}