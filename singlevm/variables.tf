#####################################################################
##
##      Criado 01/09/22 por ucdpadmin. para singlevm
##
#####################################################################

variable "virtual_machine_name" {
  type = string
  description = "Virtual machine name for virtual_machine"
}

variable "virtual_machine_number_of_vcpu" {
  type = string
  description = "Number of virtual cpu's."
}

variable "virtual_machine_memory" {
  default = "4"
  type = string
  description = "Memory allocation."
}

variable "virtual_machine_disk_name" {
  type = string
  description = "The name of the disk. Forces a new disk if changed. This should only be a longer path if attaching an external disk."
}

variable "virtual_machine_disk_size" {
  default = "40"
  type = string
  description = "The size of the disk, in GiB."
}

variable "virtual_machine_template_name" {
  type = "string"
  description = "Gerado"
}

variable "virtual_machine_datacenter_name" {
  type = "string"
  description = "Gerado"
}

variable "virtual_machine_datastore_name" {
  type = "string"
  description = "Gerado"
}

variable "virtual_machine_resource_pool" {
  type = string
  description = "Resource pool."
}

variable "virtual_machine_connection_user" {
  type = "string"
  default = "root"
}

variable "virtual_machine_connection_private_key" {
  type = "string"
  default = "key_value"
}

variable "network_network_name" {
  type = "string"
  description = "Gerado"
}

