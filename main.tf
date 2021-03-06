terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region = "eu-central-1"
}

resource "aws_instance" "app_server" {
  ami = var.ami_id
  key_name = var.key_name
  instance_type = var.app_instance_type
  vpc_security_group_ids = [aws_security_group.cache_server.id]
  tags = local.common_tags
}

resource "aws_security_group" "cache_server" {
  name_prefix = "cache"
}

resource "aws_eip" "eip" {
  instance = aws_instance.app_server.id
  vpc      = true
  count = var.eip_attach ? 1 : 0
}

module "ec2_key_pair" {
  source = "terraform-aws-modules/key-pair/aws"
  tags = local.common_tags
  key_name   = var.key_name
  public_key = var.public_key
}

locals {
  common_tags = var.app_instance_tags
}

