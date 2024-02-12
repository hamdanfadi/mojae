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


variable "tmc_oidc_issuer" {
  
}
variable "tmc_username" {
  type = string
}

variable "tmc_password" {
  type = string
}
variable "tmc_endpoint" {
  type = string
}
variable "ca_file" {
  type = string
}



variable "vcd_user" {
  type = string
}

variable "vcd_pass" {
  type = string
  sensitive = true
  
}
variable "vcd_org" {
  type = string
  
}

variable "vcd_vdc" {
  type = string
}

variable "vcd_url" {
  type = string
  
}

variable "vcd_allow_unverified_ssl" {
  type = bool
  
}

variable "vcd_max_retry_timeout" {

  
}

variable "vdc_org_name" {
  type = string
}
variable "vdc_group_name" {
  type = string
}

variable "vdc_edge_name" {
  type = string
}

variable "vdc_name" {
  type        = string
  description = "Cloud Director VDC Name"
  default     = ""
}

variable "vdc_edge_name" {
  type        = string
  description = "Cloud Director Edge Name"
  default     = ""
}

variable "vm_sizing_policy_name" {
  type    = string
  default = "gp2.4"
}

variable "vapp_org_networks" {
  description = "List of vApp Org network names"
  type        = list(object({
    name      = string
  }))
  default     = []
}

variable "is_fenced" {
  type    = bool
  default = false
  
}

variable "retain_ip_mac_enabled" {
  type    = bool
  default = false
}

variable "reboot_vapp_on_removal" {
  type    = bool
  default = true
}

variable "catalog_org_name" {
  type = string
}

variable "catalog_name" {
  type    = string
  default = ""
}

variable "catalog_template_name" {
  type    = string
  default = ""
}

variable "vapp_name" {
  type    = string
  default = "Production Application vApp"
}

variable "vm_name_format" {
  type        = string
  description = "Format for the VM name"
  default     = "%s %02d"
}

variable "vm_name" {
  type        = list(string)
  description = "List of VM names"
  default     = []
}

variable "computer_name_format" {
  type        = string
  description = "Format for the computer name"
  default     = "%s-%02d"
}

variable "computer_name" {
  type        = list(string)
  description = "List of computer names"
  default     = []
}

variable "vm_cpu_hot_add_enabled" {
  type    = bool
  default = false
}

variable "vm_memory_hot_add_enabled" {
  type    = bool
  default = false
}

variable "vm_min_cpu" {
  type    = number
  default = 2
}
//do we have to add this variables on the root 
variable "vm_count" {
  type    = number
  default = ""
}

variable "vm_metadata_entries" {
  description   = "List of metadata entries for the VM"
  type          = list(object({
    key         = string
    value       = string
    type        = string
    user_access = string
    is_system   = bool
  }))
  default = [
    {
      key         = "Built By"
      value       = "Terraform"
      type        = "MetadataStringValue"
      user_access = "READWRITE"
      is_system   = false
    },
    {
      key         = "Operating System"
      value       = "Ubuntu Linux (64-Bit)"
      type        = "MetadataStringValue"
      user_access = "READWRITE"
      is_system   = false
    },
    {
      key         = "Server Role"
      value       = "Web Server"
      type        = "MetadataStringValue"
      user_access = "READWRITE"
      is_system   = false
    }
  ]
}

variable "disks_per_vm" {
  description = "Number of disks to assign to each VM"
  type        = number
  default     = 0
}

variable "vm_disks" {
  description   = "List of disks per virtual machine"
  type          = list(object({
    name        = string
    bus_number  = number
    unit_number = number
  }))
  default     = []
}

variable "network_interfaces" {
  description           = "List of network interfaces for the VM"
  type                  = list(object({
    type                = string
    adapter_type        = string
    name                = string
    ip_allocation_mode  = string
    ip                  = string
    is_primary          = bool
  }))
  default = [
    {
      type                = "org"
      adapter_type        = "VMXNET3"
      name                = "Segment-01"
      ip_allocation_mode  = "POOL"
      ip                  = ""
      is_primary          = true
    },
    {
      type                = "org"
      adapter_type        = "VMXNET3"
      name                = "Segment-02"
      ip_allocation_mode  = "POOL"
      ip                  = ""
      is_primary          = false
    }
  ]
}



variable "override_template_disks" {
  description = "A list of disks to override in the vApp template."
  type = list(object({
    bus_type        = string
    size_in_mb      = number
    bus_number      = number
    unit_number     = number
    iops            = number
    storage_profile = string
  }))
  default           = []
}

variable "vm_ips" {
  type    = list(string)
  default = [""]
}

variable "vm_ips_index_multiplier" {
  description = "Number of network interfaces for each VM deployment"
  type        = number
  default     = 1
}
