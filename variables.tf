variable "region_name" {
 default = "us-east-1"
}
variable "instance_type" {
 description = "instance type for ec2 instance"
 default = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID"
 default = "ami-052efd3df9dad4825"
}
variable "key_name"{
 default = "cjptech"
}
