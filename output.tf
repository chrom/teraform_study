
output "aws_instance_app_elastic_ip" {
  value = var.eip_attach ? aws_eip.eip.0.public_ip : aws_instance.app_server.public_ip
}

output "aws_instance_app_elastic_dns" {
  value = var.eip_attach ? aws_eip.eip.0.public_dns : aws_instance.app_server.public_dns
}