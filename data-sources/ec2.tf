resource "aws_instance" "web" {
    ami = data.aws_ami.Centos8.id
    instance_type = "t2.micro"
    tags = {
        Name = "data-source"
    }
}