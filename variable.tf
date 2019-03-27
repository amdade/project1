

variable "vpc_cidr" {
  description = "CIDR for the VPC"
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for the public subnet"
  default = "10.0.1.0/24"
}
variable "vpc_security_group_ids" {
    default = "vpc_test_web"
}

variable "ami" {
  description = "Amazon Linux AMI"
  default = "ami-0de53d8956e8dcf80"
}
