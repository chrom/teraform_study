resource "tls_private_key" "this" {
  algorithm = "RSA"
}

module "aws_key_pair" {
  source = "terraform-aws-modules/key-pair/aws"
  tags = local.common_tags
  key_name   = "app_deployer"
  public_key = tls_private_key.this.public_key_openssh
}
