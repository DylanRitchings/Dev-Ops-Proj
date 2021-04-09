variable "outbound_port" {
  description = "List of outbound port"
  default     = 0
}

variable "public_cidr" {
  default = "0.0.0.0/0"
}


//TODO set to VPC CIDR?
variable "not_private_cidr" {
  default = "0.0.0.0/0" #needs to be range 32 (OR 16?)
}

//TODO change cidr to vpc?
variable "not_rds_private_cidr" {
  default = "0.0.0.0/0"
}


variable "vpc_id_SG" {
  default = "null"
}

variable "name" {
  default = "New Security"
}