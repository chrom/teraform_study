
output "aws_instance_app_pub_ip" {
  value = aws_instance.app_server.public_ip
}