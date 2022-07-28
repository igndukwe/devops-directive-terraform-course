
# use output to get public ip after resource is provisioned
output "instance_1_ip_addr" {
  value = aws_instance.instance_1.public_ip
}

# use output to get public ip after resource is provisioned
output "instance_2_ip_addr" {
  value = aws_instance.instance_2.public_ip
}

# use output to get public db instance address after provisioned
output "db_instance_addr" {
  value = aws_db_instance.db_instance.address
}
