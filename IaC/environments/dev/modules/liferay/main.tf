# https://registry.terraform.io/providers/vmware/tanzu-mission-control/latest/docs
# https://registry.terraform.io/providers/vmware/tanzu-mission-control/latest/docs/guides/tanzu-mission-control_cluster
# https://registry.terraform.io/providers/vmware/tanzu-mission-control/latest/docs/resources/cluster
# https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-releases/services/rn/vmware-tanzu-kubernetes-releases-release-notes/index.html#TKr%201.26.5%20for%20vSphere%208.x

# You must also have the appropriate permissions:

# To provision a cluster, you must have admin permissions on the management cluster to provision resources within it.
# You must also have clustergroup.edit permissions on the cluster group in which you want to put the new cluster.

# Create a Tanzu Kubernetes Grid Vsphere workload cluster entry
resource "tanzu-mission-control_cluster" "create_tkg_vsphere_cluster" {
#   management_cluster_name = "tkgm-terraform"
#   provisioner_name        = "default"
  name                    = var.tkg_cluster_name

  meta {
    labels = { "env" : var.env }
  }

  spec {
    cluster_group = "default" # Default: default
    tkg_vsphere {
      settings {
        network {
          pods {
            cidr_blocks = [
              "172.20.0.0/16", # pods cidr block by default has the value `172.20.0.0/16`
            ]
          }

          services {
            cidr_blocks = [
              "10.96.0.0/16", # services cidr block by default has the value `10.96.0.0/16`
            ]
          }

          api_server_port         = 6443
          control_plane_end_point = "10.191.249.39" # optional for AVI enabled option
        }

        security {
          ssh_key = "default"
        }
      }

      distribution {
        os_arch    = "amd64"
        os_name    = "photon"
        os_version = "4"
        version    = "v1.26.5---vmware.2-fips.1-tkg.1"

        workspace {
          datacenter        = "/dc0"
          datastore         = "/dc0/datastore/local-0"
          workspace_network = "/dc0/network/Avi Internal"
          folder            = "/dc0/vm"
          resource_pool     = "/dc0/host/cluster0/Resources"
        }
      }

      topology {
        control_plane {
          vm_config {
            cpu       = "2"
            disk_size = "100"
            memory    = "4096" #4GB
          }

          high_availability = false
        }

       node_pools {
          spec {
            worker_node_count = "2"

            tkg_vsphere {
              vm_config {
                cpu       = "8"
                disk_size = "100"
                memory    = "16384" #16GB
              }
            }
          }

        }

    
      }
    }
  }
}


data "vcd_vdc_group" "vdc_group" {
  org       = var.vdc_org_name
  name      = var.vdc_group_name
}

data "vcd_nsxt_edgegateway" "edge_gateway" {
  org       = var.vdc_org_name
  owner_id  = data.vcd_vdc_group.vdc_group.id
  name      = var.vdc_edge_name
}

data "vcd_network_routed_v2" "segment" {
  org             = var.vdc_org_name
  for_each        = { for net in var.vapp_org_networks : net.name => net }
  edge_gateway_id = data.vcd_nsxt_edgegateway.edge_gateway.id
  name            = each.value.name
}

data "vcd_vm_sizing_policy" "sizing_policy" {
  name = var.vm_sizing_policy_name
}

data "vcd_catalog" "catalog" {
  org   = var.catalog_org_name
  name  = var.catalog_name
}

data "vcd_catalog_vapp_template" "template" {
  org         = var.vdc_org_name
  catalog_id  = data.vcd_catalog.catalog.id
  name        = var.catalog_template_name
}

data "vcd_vapp" "vapp" {
  name = var.vapp_name
  org  = var.vdc_org_name
  vdc  = var.vdc_name
}

data "vcd_vapp_org_network" "vappOrgNet" {
  for_each            = { for net in var.vapp_org_networks : net.name => net }
  org                 = var.vdc_org_name
  vdc                 = var.vdc_name
  vapp_name           = data.vcd_vapp.vapp.name
  org_network_name    = each.value.name
}

resource "vcd_vapp_vm" "vm" {
  for_each = { for i in range(var.vm_count) : i => i }
  org                     = var.vdc_org_name
  vdc                     = var.vdc_name
  vapp_name               = data.vcd_vapp.vapp.name
  name                    = var.vm_name_format != "" ? format(var.vm_name_format, var.vm_name[each.key % length(var.vm_name)], each.key + 1) : var.vm_name[each.key % length(var.vm_name)]
  computer_name           = var.computer_name_format != "" ? format(var.computer_name_format, var.computer_name[each.key % length(var.computer_name)], each.key + 1) : var.computer_name[each.key % length(var.computer_name)]
  vapp_template_id        = data.vcd_catalog_vapp_template.template.id
  cpu_hot_add_enabled     = var.vm_cpu_hot_add_enabled
  memory_hot_add_enabled  = var.vm_memory_hot_add_enabled
  sizing_policy_id        = data.vcd_vm_sizing_policy.sizing_policy.id
  cpus                    = var.vm_min_cpu

  dynamic "metadata_entry" {
    for_each              = var.vm_metadata_entries

    content {
      key                 = metadata_entry.value.key
      value               = metadata_entry.value.value
      type                = metadata_entry.value.type
      user_access         = metadata_entry.value.user_access
      is_system           = metadata_entry.value.is_system
    }
  }

  dynamic "disk" {
    for_each = can(var.vm_disks) ? slice(var.vm_disks, each.key * var.disks_per_vm, (each.key + 1) * var.disks_per_vm) : []

    content {
      name        = can(disk.value) ? disk.value.name : null
      bus_number  = can(disk.value) ? disk.value.bus_number : null
      unit_number = can(disk.value) ? disk.value.unit_number : null
    }
  }

  dynamic "network" {
    for_each = var.network_interfaces

    content {
      type                = network.value.type
      adapter_type        = network.value.adapter_type
      name                = network.value.name
      ip_allocation_mode  = network.value.ip_allocation_mode
      ip                  = network.value.ip_allocation_mode == "MANUAL" ? element(var.vm_ips, each.key * var.vm_ips_index_multiplier + network.key) : ""
      is_primary          = network.value.is_primary
    }
  
  }  


}





