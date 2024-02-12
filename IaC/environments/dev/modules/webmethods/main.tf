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
    cluster_group = var.cluster_group # Default: default
    tkg_vsphere {
      settings {
        network {
          pods {
            cidr_blocks = [
              var.pods_cidr_block,
            ]
          }

          services {
            cidr_blocks = [
              var.services_cidr_block,
            ]
          }

          api_server_port         = var.api_server_port
          control_plane_end_point = var.control_plane_end_point # optional for AVI enabled option
        }

        security {
          ssh_key = var.ssh_key
        }
      }

      distribution {
        os_arch    = var.os_arch
        os_name    = var.os_name
        os_version = var.os_version
        version    = var.distribution_version

        workspace {
          datacenter        = var.workspace_datacenter
          datastore         = var.workspace_datastore
          workspace_network = var.workspace_network
          folder            = var.workspace_folder
          resource_pool     = var.workspace_resource_pool
        }
      }

      topology {
        control_plane {
          vm_config {
            cpu       = var.control_plan_cpu
            disk_size = var.control_plan_disk_size
            memory    = var.control_plan_memory
          }

          high_availability = var.control_plan_high_availabilityfalse
        }

       node_pools {
          spec {
            worker_node_count = var.node_pools_worker_node_count

            tkg_vsphere {
              vm_config {
                cpu       = var.node_pools_cpu
                disk_size = var.node_pools_disk_size
                memory    = var.node_pools_memory
              }
            }
          }

        }

    
      }
    }
  }
}
