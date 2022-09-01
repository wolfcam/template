#####################################################################
##
##      Criado 01/09/22 por ucdpadmin. para ibmsinglevm
##
#####################################################################

output "aws_instance_aws_instance_private_ip" {
  value = aws_instance.aws_instance.private_ip
}

output "aws_instance_aws_instance_public_ip" {
  value = aws_instance.aws_instance.public_ip
}

