locals {
  name = "sivakumar"
  training = "terraform"
  get_instance_type = var.isProd ? "t3.small" : "t2.micro"
}