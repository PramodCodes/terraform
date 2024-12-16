resource "aws_instance" "web" {
    # count = 11 # count.index is a special variable given by terraform index starts from 0
    count = length(var.instance_names)
    ami =  var.ami_id
    instance_type = [local.get_instance_type]
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
  records = [local.get_ip_address]
}