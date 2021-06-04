variable "ami_id" {
  type = string
  description = "AMI"
  default = "ami-043097594a7df80ec"
}

variable "app_instance_type" {
  type = string
  description = "instance type"
  default = "t3.nano"
}

variable "app_instance_tags" {
  type = map
  description = "instance tags"
  default = {
    Purpose = "Training"
    Project = "Terraform"
    Class   = "First"
  }
}

variable "eip_attach" {
  type = bool
  default = true
  description = "Selector for Elastic IP"
}

variable "public_key" {
  type = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC89NJbZpvLNe7FN3v2dzRoC8FKJRJ/FtXBaLGWXEKyBkJB7RSCmAh8dQK56oG8/3mOoSxMr4gB/wsCQbJoPjKT3kQL9RW8bX4LO1w/x56L8MFuUbX5Ma5lT9AQVVnEIAneYo1XnfTwng0frXEr2pXkNF5LDRh/BupepaMqwLOWLtjM9CSeeMqU/3v5MMi5S4FxlXvDUniBQ8fcGxf4/JkGB94WcdX2cMTswP2JeFrJCa4QDZ54+ZsDvR+EO7FBs3sbB0xopLwaW0Ln8yoM52KPywcfWekwqnWw6WXP6T0xBQB/ISRpSZYxOgEnfmf+N7mJzjZA2FvSTjv59fxCdNnbHqqAx9T8OPIP3xQdSWXO/+rmIZFFOFN+FH4W6lL1vvCt4b0q/Xsr8VDvoMCAmDIR+thZWiHSdFrku4+8lZjW4IA7D3EVt5cw9H2My1jVNFeSjfF+rVZMwU1KKJ/1PE6N2TLZoDPc5Mi2RKbTVxEjKYZRN/RDVOgRok/PsdLj3TDRMYCfXeaUKd6tFXE3TfBsMEgSGdsd9eJBRv1QcdBCJKlWx/0QdfK15PHuu5oRZJvzPm15kFbJNq5UVL2k9/OMuNGdOtsgXyWTv6/cuzoXhZ28N7VsGsCRPXFLToou2nj7h5otnzXqRq5WXsZEdGBHTvKxGCapF0BaFRCOJgC17Q== dr.chrom@gmail.com"
  description = "Pub Key"
}

variable "key_name" {
  type = string
  default = "app_deployer"
  description = "Key name"
}