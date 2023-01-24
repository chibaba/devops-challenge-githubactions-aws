variable "private_subnet_b_cidr_block" {
  type    = string
  default = "10.0.5.0/24"
}

variable "private_subnet_c_cidr_block" {
  type    = string
  default = "10.0.6.0/24"
}

variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "private_subnet_a_cidr_block" {
  type    = string
  default = "10.0.4.0/24"
}


variable "public_subnet_c_cidr_block" {
  type    = string
  default = "10.0.3.0/24"
}

variable "public_subnet_b_cidr_block" {
  type    = string
  default = "10.0.2.0/24"
}

variable "public_subnet_a_cidr_block" {
  type    = string
  default = "10.0.1.0/24"
}

# arn:aws:iam::812767353779:policy/github-oidc-terraform-aws-tfstates-chinedu-access