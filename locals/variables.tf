variable "isProd" {
  default = false
  type = bool
}
variable "instance_names" {
  type = list
  default = ["mongodb","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","dispatch","web"]
}

variable "ami_id" {
  default = "ami-0b4f379183e5706b9"
}

variable "zone_id" {
  default = "Z056232231439EYIBQD0B"
}

variable "domain_name" {
  default = "pka.in.net"
}
