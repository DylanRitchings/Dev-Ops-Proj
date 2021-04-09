variable "ami_id" {
  default = "ami-096cb92bb3580c759"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "pub_sub_id" {
  default = "null"
}

variable "not_priv_sub_id" {
  default = "null"
}

variable "vpc_security_group_ids" {
  default = "null"
}

variable "key" {
  default = "vmkey"
}

