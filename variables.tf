variable "access_key" {
  type = string
}
variable "secret_key" {
  type = string
}

variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t1.micro"
}

variable "instance_name" {
  description = "EC2 instance name"
  default     = "Provisioned by Terraform"
}
