variable "vpc_cidr" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "pub_sub_cidr" {
  description = "CIDR block for public subnet"
  default     = "10.0.1.0/24"
}

variable "not_priv_sub_cidr" {
  description = "CIDR block for private subnet"
  default     = "10.0.2.0/24"
}

variable "not_priv_rds_sub_cidr1" {
  description = "CIDR block for private subnet"
  default     = "10.0.3.0/24"
}

variable "not_priv_rds_sub_cidr2" {
  description = "CIDR block for private subnet"
  default     = "10.0.4.0/24"
}