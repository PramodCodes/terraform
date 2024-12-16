resource "aws_instance" "web" {
    # count = 11 # count.index is a special variable given by terraform index starts from 0
    count = length(var.instance_names)
    ami =  var.ami_id
    instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] ==  "shipping" || var.instance_names[count.index] ==  "mysql" ? var.instance_t3-small : var.instance_t2-micro
        tags = {
        Name = var.instance_names[count.index]
    }
}

resource "aws_route53_record" "www" {
#   count   = 11 (because we have 11 modules for which we need instances)
    count = length(var.instance_names)
  zone_id = var.r53-zone_id
  name    = "${var.instance_names[count.index]}.${var.domain_name}" #variable part will have $ and block
  type    = "A"
  ttl     = 60
  records = [var.instance_names[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
}