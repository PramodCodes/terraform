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
