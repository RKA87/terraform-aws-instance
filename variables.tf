# when there is nothing define in variables, we need to give mandatory value
variable "region" {
  type    = string
}

variable "instance_type" {
  type = string
}
variable "project" {
  type = string
}

variable "environment" {
  type    = string
}

variable "sg_id" {
  type    = list(string)
}


variable "instances" {
  type    = list(string)
  default = ["mongodb"]
}

variable "tags" {
  type = map(string)
  default = {}
}

variable "ami_name" {
  type    = string
  default = "ami-0220d79f3f480ecf5"
}