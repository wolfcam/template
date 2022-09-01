#####################################################################
##
##      Criado 01/09/22 por ucdpadmin. para singlevm
##
#####################################################################

output "vsphere_virtual_machine_virtual_machine_name" {
  value = vsphere_virtual_machine.virtual_machine.name
}

output "vsphere_virtual_machine_virtual_machine_private_ip" {
  value = vsphere_virtual_machine.virtual_machine.private_ip
}

