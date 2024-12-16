
output "instance_id" {
    value = aws_instance.web#[count.index].id
}

# output "insctance-public-ip" {
#     value = aws_instance.web[count.index].public_ip
# }

# output "insctance-private-ip" {
#     value = aws_instance.web[count.index].private_ip
# }
