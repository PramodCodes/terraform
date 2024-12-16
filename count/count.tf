resource "aws_instance" "web" {
    count = 11 # count.index is a special variable given by terraform index starts from 0
    ami =  var.ami_id
    instance_type = var.instance_type
    tags = {
        Name = var.instance_names[count.index]
    }
}

resource "aws_route53_record" "www" {
  count   = 11
  zone_id = var.r53-zone_id
  name    = "{var.instance_names[count.index]}.${var.domain_name}" #variable part will have $ and block
  type    = "A"
  ttl     = 60
  records = [var.instance_names[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
}