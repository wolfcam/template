#####################################################################
##
##      Criado 01/09/22 por ucdpadmin. para singlevm
##
#####################################################################

## REFERENCE {"vsphere_network":{"type": "vsphere_reference_network"}}

terraform {
  required_version = "~> 0.12"
}

provider "vsphere" {
  version = "~> 1.24"
}


data "vsphere_virtual_machine" "virtual_machine_template" {
  name          = var.virtual_machine_template_name
  datacenter_id = data.vsphere_datacenter.virtual_machine_datacenter.id
}

data "vsphere_datacenter" "virtual_machine_datacenter" {
  name = var.virtual_machine_datacenter_name
}

data "vsphere_datastore" "virtual_machine_datastore" {
  name          = var.virtual_machine_datastore_name
  datacenter_id = data.vsphere_datacenter.virtual_machine_datacenter.id
}

data "vsphere_network" "network" {
  name          = var.network_network_name
  datacenter_id = data.vsphere_datacenter.virtual_machine_datacenter.id
}

resource "vsphere_virtual_machine" "virtual_machine" {
  name          = var.virtual_machine_name
  datastore_id  = data.vsphere_datastore.virtual_machine_datastore.id
  num_cpus      = var.virtual_machine_number_of_vcpu
  memory        = var.virtual_machine_memory
  guest_id = data.vsphere_virtual_machine.virtual_machine_template.guest_id
  resource_pool_id = var.virtual_machine_resource_pool
  connection {
    host = "TODO"
    type = "ssh"
    user = var.virtual_machine_connection_user
    private_key = var.virtual_machine_connection_private_key
  }
  network_interface {
    network_id = data.vsphere_network.network.id
  }
  clone {
    template_uuid = data.vsphere_virtual_machine.virtual_machine_template.id
  }
  disk {
    label = var.virtual_machine_disk_name
    size = var.virtual_machine_disk_size
  }
}

