#-----------------------------------
#Connecting aws provider
#-------------------------------
provider "aws" {
 region = var.region_name
}
#Creating a AWS Instance
#-------------------------------

resource "aws_instance" "my_instance" {
   ami                           = var.ami_id
  associate_public_ip_address    = "true"
  instance_type                  = var.instance_type
  availability_zone              = "us-east-1b"
  key_name                       = var.key_name
  # subnet_id                     = var.subnet_pub

 # vpc_security_group_ids = [aws_security_group.ec2-sg.id]
   source_dest_check              = "true"
  tenancy                        = "default"



 tags = {
      Name               = "Bastion-host"
 }
}
