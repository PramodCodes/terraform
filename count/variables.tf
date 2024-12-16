variable "instance_names" {
    type = list
    default = [ "mongodb","web","redis","user","mysql","rabbitmq","catalogue","cart","shipping","payment","dispatch" ]
}

variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}


variable "instance_name" {
    type = string
    default = "MongoDB"
}
# tags are maps so 

variable "instance_t2-micro" {
    type = string
    default = "t2.micro"
}

variable "instance_t3-small" {
    type = string
    default = "t3.small"
}

variable "tags" {
    default = {
        Project = "roboshop"
        Environment = "dev"
        Component = "web"
        Terraform  = "true"
    }
}

variable "r53-zone_id" {
    type = string
    default = "Z056232231439EYIBQD0B"
}

variable "domain_name" {
    type = string
    default = "pka.in.net"
}   
 