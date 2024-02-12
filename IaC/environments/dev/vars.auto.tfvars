env = "dev"

#####################################################################################
#####################################################################################
## iam app
# tanzu-mission-control_cluster variables

iam_tkg_cluster_name                 = "iam_cluster"
iam_cluster_group                    = "default"
iam_pods_cidr_block                  = "172.20.0.0/16"
iam_services_cidr_block              = "10.96.0.0/16"
iam_api_server_port                  = 6443
iam_control_plane_end_point          = "10.191.249.39"
iam_ssh_key                          = "default"
iam_os_arch                          = "amd64"
iam_os_name                          = "photon"
iam_os_version                       = "4"
iam_distribution_version             = "v1.26.5---vmware.2-fips.1-tkg.1"
iam_workspace_datacenter             = "/dc0"
iam_workspace_datastore              = "/dc0/datastore/local-0"
iam_workspace_network                = "/dc0/network/Avi Internal"
iam_workspace_folder                 = "/dc0/vm"
iam_workspace_resource_pool          = "/dc0/host/cluster0/Resources"
iam_control_plan_cpu                 = "2"
iam_control_plan_disk_size           = "100"
iam_control_plan_memory              = "4096"
iam_control_plan_high_availability   = false
iam_node_pools_worker_node_count     = "2"
iam_node_pools_cpu                   = "8"
iam_node_pools_disk_size             = "100"
iam_node_pools_memory                = "16384"


#####################################################################################
#####################################################################################
## liferay app
# tanzu-mission-control_cluster variables

liferay_tkg_cluster_name                 = "liferay_cluster"
liferay_cluster_group                    = "default"
liferay_pods_cidr_block                  = "172.20.0.0/16"
liferay_services_cidr_block              = "10.96.0.0/16"
liferay_api_server_port                  = 6443
liferay_control_plane_end_point          = "10.191.249.39"
liferay_ssh_key                          = "default"
liferay_os_arch                          = "amd64"
liferay_os_name                          = "photon"
liferay_os_version                       = "4"
liferay_distribution_version             = "v1.26.5---vmware.2-fips.1-tkg.1"
liferay_workspace_datacenter             = "/dc0"
liferay_workspace_datastore              = "/dc0/datastore/local-0"
liferay_workspace_network                = "/dc0/network/Avi Internal"
liferay_workspace_folder                 = "/dc0/vm"
liferay_workspace_resource_pool          = "/dc0/host/cluster0/Resources"
liferay_control_plan_cpu                 = "2"
liferay_control_plan_disk_size           = "100"
liferay_control_plan_memory              = "4096"
liferay_control_plan_high_availability   = false
liferay_node_pools_worker_node_count     = "2"
liferay_node_pools_cpu                   = "8"
liferay_node_pools_disk_size             = "100"
liferay_node_pools_memory                = "16384"


#####################################################################################
#####################################################################################
## webmethods app
# tanzu-mission-control_cluster variables

webmethods_tkg_cluster_name                 = "webmethods_cluster"
webmethods_cluster_group                    = "default"
webmethods_pods_cidr_block                  = "172.20.0.0/16"
webmethods_services_cidr_block              = "10.96.0.0/16"
webmethods_api_server_port                  = 6443
webmethods_control_plane_end_point          = "10.191.249.39"
webmethods_ssh_key                          = "default"
webmethods_os_arch                          = "amd64"
webmethods_os_name                          = "photon"
webmethods_os_version                       = "4"
webmethods_distribution_version             = "v1.26.5---vmware.2-fips.1-tkg.1"
webmethods_workspace_datacenter             = "/dc0"
webmethods_workspace_datastore              = "/dc0/datastore/local-0"
webmethods_workspace_network                = "/dc0/network/Avi Internal"
webmethods_workspace_folder                 = "/dc0/vm"
webmethods_workspace_resource_pool          = "/dc0/host/cluster0/Resources"
webmethods_control_plan_cpu                 = "2"
webmethods_control_plan_disk_size           = "100"
webmethods_control_plan_memory              = "4096"
webmethods_control_plan_high_availability   = false
webmethods_node_pools_worker_node_count     = "9"
webmethods_node_pools_cpu                   = "6"
webmethods_node_pools_disk_size             = "100"
webmethods_node_pools_memory                = "16384"

## VMs

liferay_vapp_name = "Liferay"
liferay_vm_count = 1


iam_vapp_name = "IAM"
iam_vm_count = 1


webmethods_vapp_name = "WebMethods"
webmethods_vm_count = 2


crm_vapp_name = "CRM"
crm_vm_count = 3


dms_vapp_name = "DMS"
dms_vm_count = 6

ivr_vapp_name = "IVR"
ivr_vm_count = 2


teradata_vapp_name = "Teradata-dw"
teradata_vm_count = 1


