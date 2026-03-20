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

variable "ami_id" {
  type    = string
}

variable "sg_ids" {
  type    = list(string)
}


variable "instances" {
  type    = list(string)
  default = ["default"]
}

#default value shows empty, which means this variable is optional
#if use provide the inputs to this variable in a dict manner, then it will be used in the code, otherwise it will be ignored
variable "tags" {
  type = map(string)
  default = {}
}

variable "ami_name" {
  type    = string
  default = "ami-0220d79f3f480ecf5"
}