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


resource "aws_instance" "aws_instance" {
  ami = var.aws_instance_ami
  key_name = aws_key_pair.auth.id
  instance_type = var.aws_instance_aws_instance_type
  availability_zone = var.availability_zone
  tags = {
    Name = var.aws_instance_name
  }
}

resource "tls_private_key" "ssh" {
    algorithm = "RSA"
}

resource "aws_key_pair" "auth" {
    key_name = var.aws_key_pair_name
    public_key = tls_private_key.ssh.public_key_openssh
}

resource "aws_ebs_volume" "volume_name" {
    availability_zone = var.availability_zone
    size              = var.volume_name_volume_size
}