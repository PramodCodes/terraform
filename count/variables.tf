variable "instance_names" {
    type = list(string)
    default = [ "mongodb","web","redis","user","mysql","rabbitmq","catalogue","redis","cart","shipping","payment","dispatch" ]
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

variable "instance_type" {
    type = string
    default = "t2.micro"
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
