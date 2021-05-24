variable "ami_id" {
  type = string
  description = ""
  default = ""
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
    Project = "Teraform"
    Class   = "First"
  }
}
