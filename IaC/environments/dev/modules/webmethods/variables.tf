variable "env" {
  type    = string
}

# tanzu-mission-control_cluster variables
variable "tkg_cluster_name" {
  type    = string
}
variable "cluster_group" {
  type    = string
}
variable "pods_cidr_block" {
  type    = string
}
variable "services_cidr_block" {
  type    = string
}
variable "api_server_port" {
  type    = number
}
variable "control_plane_end_point" {
  type    = string
}
variable "ssh_key" {
  type    = string
}
variable "os_arch" {
  type    = string
}
variable "os_name" {
  type    = string
}
variable "os_version" {
  type    = string
}
variable "distribution_version" {
  type    = string
}
variable "workspace_datacenter" {
  type    = string
}
variable "workspace_datastore" {
  type    = string
}
variable "workspace_network" {
  type    = string
}
variable "workspace_folder" {
  type    = string
}
variable "workspace_resource_pool" {
  type    = string
}
variable "control_plan_cpu" {
  type    = string
}
variable "control_plan_disk_size" {
  type    = string
}
variable "control_plan_memory" {
  type    = string
}
variable "control_plan_high_availability" {
  type    = bool
}
variable "node_pools_worker_node_count" {
  type    = string
}
variable "node_pools_cpu" {
  type    = string
}
variable "node_pools_disk_size" {
  type    = string
}
variable "node_pools_memory" {
  type    = string
}