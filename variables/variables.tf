variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}
# tags are maps so 

variable "tags" {
    default = {
        Name = "Hello TF"
        Project = "roboshop"
        Environment = "dev"
        Component = "web"
        Terraform  = "true"
    }
}
