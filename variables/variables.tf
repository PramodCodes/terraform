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

variable "sg-name" {
  type = string
  default = "allow-all-tf"
}

variable "sg-description" {
  type = string
  default = "Allow TLS inbound traffic"
}

variable "inbound-from-port" {
  type = number
  default = 0
}

variable "outbound-from-to-port" {
  type = number
  default = 0
}

variable "cidr_block" {
  type = list
  default = ["0.0.0.0/0"]
}