#####################################################################
##
##      Criado 01/09/22 por ucdpadmin. para ibmsinglevm
##
#####################################################################

terraform {
  required_version = "~> 0.12"
}

provider "aws" {
  version = "~> 3.0"
}
data "aws_key_pair" "auth" {
    key_name = var.aws_key_pair_name
}

resource "aws_instance" "aws_instance" {
  ami = var.aws_instance_ami
  key_name = data.aws_key_pair.auth.name
  instance_type = var.aws_instance_aws_instance_type
  availability_zone = var.availability_zone
  tags = {
    Name = var.aws_instance_name
  }
}

resource "tls_private_key" "ssh" {
    algorithm = "RSA"
}



resource "aws_ebs_volume" "volume_name" {
    availability_zone = var.availability_zone
    size              = var.volume_name_volume_size
}