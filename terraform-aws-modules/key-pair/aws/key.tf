resource "aws_key_pair" "key_pair" {
  public_key = var.public_key
  key_name = var.key_name
}

variable "key_name" {
  type = string
  default = "app_deployer"
  description = "Key"
}

variable "public_key" {
  type = string
  default = ""
  description = "Pub Key"
}