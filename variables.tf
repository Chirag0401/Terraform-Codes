variable "INSTANCE_TYPE" {
  default = "t2.micro"
  type    = string
}

variable "DB_INSTANCE_CLASS" {
  type    = string
  default = "db.t2.micro"
}

variable "vpc_id" {
  description = "AWS VPC Environment Name"
  type        = string
  default     = ""
}

variable "vpc_subnet1" {
  description = "AWS VPC Environment Name"
  type        = string
  default     = ""
}

variable "vpc_subnet2" {
  description = "AWS VPC Environment Name"
  type        = string
  default     = ""
}
