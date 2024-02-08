# https://registry.terraform.io/providers/vmware/tanzu-mission-control/latest/docs
# https://registry.terraform.io/providers/vmware/tanzu-mission-control/latest/docs/guides/tanzu-mission-control_cluster
# https://registry.terraform.io/providers/vmware/tanzu-mission-control/latest/docs/resources/cluster
# https://docs.vmware.com/en/VMware-Tanzu-Kubernetes-releases/services/rn/vmware-tanzu-kubernetes-releases-release-notes/index.html#TKr%201.26.5%20for%20vSphere%208.x

# You must also have the appropriate permissions:

# To provision a cluster, you must have admin permissions on the management cluster to provision resources within it.
# You must also have clustergroup.edit permissions on the cluster group in which you want to put the new cluster.

# Create a Tanzu Kubernetes Grid Vsphere workload cluster entry
resource "tanzu-mission-control_cluster" "create_tkg_vsphere_cluster1" {
#   management_cluster_name = "tkgm-terraform"
#   provisioner_name        = "default"
  name                    = var.tkg_cluster1_name

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
            memory    = "4096"
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
                memory    = "8192"
              }
            }
          }

        }
      }
    }
  }
}

# Create a Tanzu Kubernetes Grid Vsphere workload cluster entry
resource "tanzu-mission-control_cluster" "create_tkg_vsphere_cluster2" {
#   management_cluster_name = "tkgm-terraform"
#   provisioner_name        = "default"
  name                    = var.tkg_cluster2_name

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
            memory    = "4096"
          }

          high_availability = false
        }

        node_pools {
          spec {
            worker_node_count = "9"

            tkg_vsphere {
              vm_config {
                cpu       = "4"
                disk_size = "100"
                memory    = "8192"
              }
            }
          }

        }
      }
    }
  }
}

# Create a Tanzu Kubernetes Grid Vsphere workload cluster entry
resource "tanzu-mission-control_cluster" "create_tkg_vsphere_cluster3" {
#   management_cluster_name = "tkgm-terraform"
#   provisioner_name        = "default"
  name                    = var.tkg_cluster3_name

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
            memory    = "4096"
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
                memory    = "8192"
              }
            }
          }

        }
      }
    }
  }
}


