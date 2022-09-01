#####################################################################
##
##      Criado 01/09/22 por ucdpadmin. para ibmsinglevm
##
#####################################################################

variable "aws_instance_ami" {
  default = "ami-02f3416038bdb17fb"
  type = "string"
  description = "Gerado"
}

variable "aws_instance_aws_instance_type" {
  default = "t2.micro"
  type = "string"
  description = "Gerado"
}

variable "availability_zone" {
  default = "us-east-2"
  type = "string"
  description = "Gerado"
}

variable "aws_instance_name" {
  default = "ibmteste"
  type = "string"
  description = "Gerado"
}

variable "aws_key_pair_name" {
  default = "ibmlab"
  type = "string"
  description = "Gerado"
}

variable "volume_name_volume_size" {
  default = "40"
  type = "string"
  description = "Gerado"
}

