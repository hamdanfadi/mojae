variable "env" {
  type    = string
}

# LIFERAY VARIABLES
variable "liferay_tkg_cluster_name" {
  type    = string
}

variable "liferay_tmc_oidc_issuer" {
  
}
variable "liferay_tmc_username" {
  type = string
}

variable "liferay_tmc_password" {
  type = string
}
variable "liferay_tmc_endpoint" {
  type = string
}
variable "liferay_ca_file" {
  type = string
}


variable "liferay_vcd_user" {
  type = string
}

variable "liferay_vcd_pass" {
  type = string
  sensitive = true
  
}

variable "liferay_vcd_org" {
  type = string
  
}

variable "liferay_vcd_vdc" {
  type = string
}

variable "liferay_vcd_url" {
  type = string
  
}

variable "liferay_vcd_allow_unverified_ssl" {
  type = bool
  
}

variable "liferay_vcd_max_retry_timeout" {

  
}

variable "liferay_vdc_org_name" {
  type = string
}
variable "liferay_vdc_group_name" {
  type = string
}

variable "liferay_vdc_edge_name" {
  type = string
}

variable "liferay_vdc_name" {
  type        = string
  description = "Cloud Director VDC Name"
  default     = ""
}

variable "liferay_vdc_edge_name" {
  type        = string
  description = "Cloud Director Edge Name"
  default     = ""
}

variable "liferay_vm_sizing_policy_name" {
  type    = string
  default = "gp2.4"
}

variable "liferay_vapp_org_networks" {
  description = "List of vApp Org network names"
  type        = list(object({
    name      = string
  }))
  default     = []
}

variable "liferay_is_fenced" {
  type    = bool
  default = false
  
}

variable "liferay_retain_ip_mac_enabled" {
  type    = bool
  default = false
}

variable "liferay_reboot_vapp_on_removal" {
  type    = bool
  default = true
}

variable "liferay_catalog_org_name" {
  type = string
}

variable "liferay_catalog_name" {
  type    = string
  default = ""
}

variable "liferay_catalog_template_name" {
  type    = string
  default = ""
}

variable "liferay_vapp_name" {
  type    = string
  default = "Production Application vApp"
}

variable "liferay_vm_name_format" {
  type        = string
  description = "Format for the VM name"
  default     = "%s %02d"
}

variable "liferay_vm_name" {
  type        = list(string)
  description = "List of VM names"
  default     = []
}

variable "liferay_computer_name_format" {
  type        = string
  description = "Format for the computer name"
  default     = "%s-%02d"
}

variable "liferay_computer_name" {
  type        = list(string)
  description = "List of computer names"
  default     = []
}

variable "liferay_vm_cpu_hot_add_enabled" {
  type    = bool
  default = false
}

variable "liferay_vm_memory_hot_add_enabled" {
  type    = bool
  default = false
}

variable "liferay_vm_min_cpu" {
  type    = number
  default = 2
}

variable "liferay_vm_count" {
  type    = number
  default = ""
}

variable "liferay_vm_metadata_entries" {
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

variable "liferay_disks_per_vm" {
  description = "Number of disks to assign to each VM"
  type        = number
  default     = 0
}

variable "liferay_vm_disks" {
  description   = "List of disks per virtual machine"
  type          = list(object({
    name        = string
    bus_number  = number
    unit_number = number
  }))
  default     = []
}

variable "liferay_network_interfaces" {
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



variable "liferay_override_template_disks" {
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

variable "liferay_vm_ips" {
  type    = list(string)
  default = [""]
}

variable "liferay_vm_ips_index_multiplier" {
  description = "Number of network interfaces for each VM deployment"
  type        = number
  default     = 1
}


#CRM VARIABLES
variable "crm_vcd_user" {
  type = string
}

variable "crm_vcd_pass" {
  type = string
  sensitive = true
  
}

variable "crm_vcd_org" {
  type = string
  
}

variable "crm_vcd_vdc" {
  type = string
}

variable "crm_vcd_url" {
  type = string
  
}

variable "crm_vcd_allow_unverified_ssl" {
  type = bool
  
}

variable "crm_vcd_max_retry_timeout" {

  
}

variable "crm_vdc_org_name" {
  type = string
}
variable "crm_vdc_group_name" {
  type = string
}

variable "crm_vdc_edge_name" {
  type = string
}

variable "crm_vdc_name" {
  type        = string
  description = "Cloud Director VDC Name"
  default     = ""
}

variable "crm_vdc_edge_name" {
  type        = string
  description = "Cloud Director Edge Name"
  default     = ""
}

variable "crm_vm_sizing_policy_name" {
  type    = string
  default = "gp2.4"
}

variable "crm_vapp_org_networks" {
  description = "List of vApp Org network names"
  type        = list(object({
    name      = string
  }))
  default     = []
}

variable "crm_is_fenced" {
  type    = bool
  default = false
  
}

variable "crm_retain_ip_mac_enabled" {
  type    = bool
  default = false
}

variable "crm_reboot_vapp_on_removal" {
  type    = bool
  default = true
}

variable "crm_catalog_org_name" {
  type = string
}

variable "crm_catalog_name" {
  type    = string
  default = ""
}

variable "crm_catalog_template_name" {
  type    = string
  default = ""
}

variable "crm_vapp_name" {
  type    = string
  default = "Production Application vApp"
}

variable "crm_vm_name_format" {
  type        = string
  description = "Format for the VM name"
  default     = "%s %02d"
}

variable "crm_vm_name" {
  type        = list(string)
  description = "List of VM names"
  default     = []
}

variable "crm_computer_name_format" {
  type        = string
  description = "Format for the computer name"
  default     = "%s-%02d"
}

variable "crm_computer_name" {
  type        = list(string)
  description = "List of computer names"
  default     = []
}

variable "crm_vm_cpu_hot_add_enabled" {
  type    = bool
  default = false
}

variable "crm_vm_memory_hot_add_enabled" {
  type    = bool
  default = false
}

variable "crm_vm_min_cpu" {
  type    = number
  default = 2
}

variable "crm_vm_count" {
  type    = number
  default = ""
}

variable "crm_vm_metadata_entries" {
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

variable "crm_disks_per_vm" {
  description = "Number of disks to assign to each VM"
  type        = number
  default     = 0
}

variable "crm_vm_disks" {
  description   = "List of disks per virtual machine"
  type          = list(object({
    name        = string
    bus_number  = number
    unit_number = number
  }))
  default     = []
}

variable "crm_network_interfaces" {
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

variable "crm_override_template_disks" {
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

variable "crm_vm_ips" {
  type    = list(string)
  default = [""]
}

variable "crm_vm_ips_index_multiplier" {
  description = "Number of network interfaces for each VM deployment"
  type        = number
  default     = 1
}


# DMS VARIABLES 



variable "dms_vcd_user" {
  type = string
}

variable "dms_vcd_pass" {
  type = string
  sensitive = true
  
}

variable "dms_vcd_org" {
  type = string
  
}

variable "dms_vcd_vdc" {
  type = string
}

variable "dms_vcd_url" {
  type = string
  
}

variable "dms_vcd_allow_unverified_ssl" {
  type = bool
  
}

variable "dms_vcd_max_retry_timeout" {

  
}

variable "dms_vdc_org_name" {
  type = string
}
variable "dms_vdc_group_name" {
  type = string
}

variable "dms_vdc_edge_name" {
  type = string
}

variable "dms_vdc_name" {
  type        = string
  description = "Cloud Director VDC Name"
  default     = ""
}

variable "dms_vdc_edge_name" {
  type        = string
  description = "Cloud Director Edge Name"
  default     = ""
}

variable "dms_vm_sizing_policy_name" {
  type    = string
  default = "gp2.4"
}

variable "dms_vapp_org_networks" {
  description = "List of vApp Org network names"
  type        = list(object({
    name      = string
  }))
  default     = []
}

variable "dms_is_fenced" {
  type    = bool
  default = false
  
}

variable "dms_retain_ip_mac_enabled" {
  type    = bool
  default = false
}

variable "dms_reboot_vapp_on_removal" {
  type    = bool
  default = true
}

variable "dms_catalog_org_name" {
  type = string
}

variable "dms_catalog_name" {
  type    = string
  default = ""
}

variable "dms_catalog_template_name" {
  type    = string
  default = ""
}

variable "dms_vapp_name" {
  type    = string
  default = "Production Application vApp"
}

variable "dms_vm_name_format" {
  type        = string
  description = "Format for the VM name"
  default     = "%s %02d"
}

variable "dms_vm_name" {
  type        = list(string)
  description = "List of VM names"
  default     = []
}

variable "dms_computer_name_format" {
  type        = string
  description = "Format for the computer name"
  default     = "%s-%02d"
}

variable "dms_computer_name" {
  type        = list(string)
  description = "List of computer names"
  default     = []
}

variable "dms_vm_cpu_hot_add_enabled" {
  type    = bool
  default = false
}

variable "dms_vm_memory_hot_add_enabled" {
  type    = bool
  default = false
}

variable "dms_vm_min_cpu" {
  type    = number
  default = 2
}

variable "dms_vm_count" {
  type    = number
  default = ""
}

variable "dms_vm_metadata_entries" {
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

variable "dms_disks_per_vm" {
  description = "Number of disks to assign to each VM"
  type        = number
  default     = 0
}

variable "dms_vm_disks" {
  description   = "List of disks per virtual machine"
  type          = list(object({
    name        = string
    bus_number  = number
    unit_number = number
  }))
  default     = []
}

variable "dms_network_interfaces" {
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

variable "dms_override_template_disks" {
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

variable "dms_vm_ips" {
  type    = list(string)
  default = [""]
}

variable "dms_vm_ips_index_multiplier" {
  description = "Number of network interfaces for each VM deployment"
  type        = number
  default     = 1
}


#IVR VARIABLES
variable "ivr_env" {
  type    = string
}

variable "ivr_vcd_user" {
  type = string
}

variable "ivr_vcd_pass" {
  type = string
  sensitive = true
  
}

variable "ivr_vcd_org" {
  type = string
  
}

variable "ivr_vcd_vdc" {
  type = string
}

variable "ivr_vcd_url" {
  type = string
  
}

variable "ivr_vcd_allow_unverified_ssl" {
  type = bool
  
}

variable "ivr_vcd_max_retry_timeout" {

  
}

variable "ivr_vdc_org_name" {
  type = string
}
variable "ivr_vdc_group_name" {
  type = string
}

variable "ivr_vdc_edge_name" {
  type = string
}

variable "ivr_vdc_name" {
  type        = string
  description = "Cloud Director VDC Name"
  default     = ""
}

variable "ivr_vdc_edge_name" {
  type        = string
  description = "Cloud Director Edge Name"
  default     = ""
}

variable "ivr_vm_sizing_policy_name" {
  type    = string
  default = "gp2.4"
}

variable "ivr_vapp_org_networks" {
  description = "List of vApp Org network names"
  type        = list(object({
    name      = string
  }))
  default     = []
}

variable "ivr_is_fenced" {
  type    = bool
  default = false
  
}

variable "ivr_retain_ip_mac_enabled" {
  type    = bool
  default = false
}

variable "ivr_reboot_vapp_on_removal" {
  type    = bool
  default = true
}

variable "ivr_catalog_org_name" {
  type = string
}

variable "ivr_catalog_name" {
  type    = string
  default = ""
}

variable "ivr_catalog_template_name" {
  type    = string
  default = ""
}

variable "ivr_vapp_name" {
  type    = string
  default = "Production Application vApp"
}

variable "ivr_vm_name_format" {
  type        = string
  description = "Format for the VM name"
  default     = "%s %02d"
}

variable "ivr_vm_name" {
  type        = list(string)
  description = "List of VM names"
  default     = []
}

variable "ivr_computer_name_format" {
  type        = string
  description = "Format for the computer name"
  default     = "%s-%02d"
}

variable "ivr_computer_name" {
  type        = list(string)
  description = "List of computer names"
  default     = []
}

variable "ivr_vm_cpu_hot_add_enabled" {
  type    = bool
  default = false
}

variable "ivr_vm_memory_hot_add_enabled" {
  type    = bool
  default = false
}

variable "ivr_vm_min_cpu" {
  type    = number
  default = 2
}

variable "ivr_vm_count" {
  type    = number
  default = ""
}

variable "ivr_vm_metadata_entries" {
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

variable "ivr_disks_per_vm" {
  description = "Number of disks to assign to each VM"
  type        = number
  default     = 0
}

variable "ivr_vm_disks" {
  description   = "List of disks per virtual machine"
  type          = list(object({
    name        = string
    bus_number  = number
    unit_number = number
  }))
  default     = []
}

variable "ivr_network_interfaces" {
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

variable "ivr_override_template_disks" {
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

variable "ivr_vm_ips" {
  type    = list(string)
  default = [""]
}

variable "ivr_vm_ips_index_multiplier" {
  description = "Number of network interfaces for each VM deployment"
  type        = number
  default     = 1
}

#IAM VARIABLES

variable "iam_env" {
  type    = string
}

variable "iam_tkg_cluster_name" {
  type    = string
}


variable "iam_tmc_oidc_issuer" {
  
}
variable "iam_tmc_username" {
  type = string
}

variable "iam_tmc_password" {
  type = string
}
variable "iam_tmc_endpoint" {
  type = string
}
variable "iam_ca_file" {
  type = string
}


variable "iam_vcd_user" {
  type = string
}

variable "iam_vcd_pass" {
  type = string
  sensitive = true
  
}

variable "iam_vcd_org" {
  type = string
  
}

variable "iam_vcd_vdc" {
  type = string
}

variable "iam_vcd_url" {
  type = string
  
}

variable "iam_vcd_allow_unverified_ssl" {
  type = bool
  
}

variable "iam_vcd_max_retry_timeout" {

  
}

variable "iam_vdc_org_name" {
  type = string
}
variable "iam_vdc_group_name" {
  type = string
}

variable "iam_vdc_edge_name" {
  type = string
}

variable "iam_vdc_name" {
  type        = string
  description = "Cloud Director VDC Name"
  default     = ""
}

variable "iam_vdc_edge_name" {
  type        = string
  description = "Cloud Director Edge Name"
  default     = ""
}

variable "iam_vm_sizing_policy_name" {
  type    = string
  default = "gp2.4"
}

variable "iam_vapp_org_networks" {
  description = "List of vApp Org network names"
  type        = list(object({
    name      = string
  }))
  default     = []
}

variable "iam_is_fenced" {
  type    = bool
  default = false
  
}

variable "iam_retain_ip_mac_enabled" {
  type    = bool
  default = false
}

variable "iam_reboot_vapp_on_removal" {
  type    = bool
  default = true
}

variable "iam_catalog_org_name" {
  type = string
}

variable "iam_catalog_name" {
  type    = string
  default = ""
}

variable "iam_catalog_template_name" {
  type    = string
  default = ""
}

variable "iam_vapp_name" {
  type    = string
  default = "Production Application vApp"
}

variable "iam_vm_name_format" {
  type        = string
  description = "Format for the VM name"
  default     = "%s %02d"
}

variable "iam_vm_name" {
  type        = list(string)
  description = "List of VM names"
  default     = []
}

variable "iam_computer_name_format" {
  type        = string
  description = "Format for the computer name"
  default     = "%s-%02d"
}

variable "iam_computer_name" {
  type        = list(string)
  description = "List of computer names"
  default     = []
}

variable "iam_vm_cpu_hot_add_enabled" {
  type    = bool
  default = false
}

variable "iam_vm_memory_hot_add_enabled" {
  type    = bool
  default = false
}

variable "iam_vm_min_cpu" {
  type    = number
  default = 2
}

variable "iam_vm_count" {
  type    = number
  default = ""
}

variable "iam_vm_metadata_entries" {
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

variable "iam_disks_per_vm" {
  description = "Number of disks to assign to each VM"
  type        = number
  default     = 0
}

variable "iam_vm_disks" {
  description   = "List of disks per virtual machine"
  type          = list(object({
    name        = string
    bus_number  = number
    unit_number = number
  }))
  default     = []
}

variable "iam_network_interfaces" {
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

variable "iam_override_template_disks" {
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

variable "iam_vm_ips" {
  type    = list(string)
  default = [""]
}

variable "iam_vm_ips_index_multiplier" {
  description = "Number of network interfaces for each VM deployment"
  type        = number
  default     = 1
}


#teradata variables 

variable "teradata_env" {
  type    = string
}

variable "teradata_tkg_cluster_name" {
  type    = string
}

variable "teradata_tmc_oidc_issuer" {
  
}

variable "teradata_tmc_username" {
  type = string
}

variable "teradata_tmc_password" {
  type = string
}

variable "teradata_tmc_endpoint" {
  type = string
}

variable "teradata_ca_file" {
  type = string
}

variable "teradata_vcd_user" {
  type = string
}

variable "teradata_vcd_pass" {
  type = string
  sensitive = true
  
}

variable "teradata_vcd_org" {
  type = string
  
}

variable "teradata_vcd_vdc" {
  type = string
}

variable "teradata_vcd_url" {
  type = string
  
}

variable "teradata_vcd_allow_unverified_ssl" {
  type = bool
  
}

variable "teradata_vcd_max_retry_timeout" {

  
}

variable "teradata_vdc_org_name" {
  type = string
}

variable "teradata_vdc_group_name" {
  type = string
}

variable "teradata_vdc_edge_name" {
  type = string
}

variable "teradata_vdc_name" {
  type        = string
  description = "Cloud Director VDC Name"
  default     = ""
}

variable "teradata_vdc_edge_name" {
  type        = string
  description = "Cloud Director Edge Name"
  default     = ""
}

variable "teradata_vm_sizing_policy_name" {
  type    = string
  default = "gp2.4"
}

variable "teradata_vapp_org_networks" {
  description = "List of vApp Org network names"
  type        = list(object({
    name      = string
  }))
  default     = []
}

variable "teradata_is_fenced" {
  type    = bool
  default = false
  
}

variable "teradata_retain_ip_mac_enabled" {
  type    = bool
  default = false
}

variable "teradata_reboot_vapp_on_removal" {
  type    = bool
  default = true
}

variable "teradata_catalog_org_name" {
  type = string
}

variable "teradata_catalog_name" {
  type    = string
  default = ""
}

variable "teradata_catalog_template_name" {
  type    = string
  default = ""
}

variable "teradata_vapp_name" {
  type    = string
  default = "Production Application vApp"
}

variable "teradata_vm_name_format" {
  type        = string
  description = "Format for the VM name"
  default     = "%s %02d"
}

variable "teradata_vm_name" {
  type        = list(string)
  description = "List of VM names"
  default     = []
}

variable "teradata_computer_name_format" {
  type        = string
  description = "Format for the computer name"
  default     = "%s-%02d"
}

variable "teradata_computer_name" {
  type        = list(string)
  description = "List of computer names"
  default     = []
}

variable "teradata_vm_cpu_hot_add_enabled" {
  type    = bool
  default = false
}

variable "teradata_vm_memory_hot_add_enabled" {
  type    = bool
  default = false
}

variable "teradata_vm_min_cpu" {
  type    = number
  default = 2
}

variable "teradata_vm_count" {
  type    = number
  default = ""
}

variable "teradata_vm_metadata_entries" {
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

variable "teradata_disks_per_vm" {
  description = "Number of disks to assign to each VM"
  type        = number
  default     = 0
}

variable "teradata_vm_disks" {
  description   = "List of disks per virtual machine"
  type          = list(object({
    name        = string
    bus_number  = number
    unit_number = number
  }))
  default     = []
}

variable "teradata_network_interfaces" {
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

variable "teradata_override_template_disks" {
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

variable "teradata_vm_ips" {
  type    = list(string)
  default = [""]
}

variable "teradata_vm_ips_index_multiplier" {
  description = "Number of network interfaces for each VM deployment"
  type        = number
  default     = 1
}


#WEBMETHODS VARIABLES


variable "webmethods_env" {
  type    = string
}

variable "webmethods_tkg_cluster_name" {
  type    = string
}

variable "webmethods_tmc_oidc_issuer" {
  
}

variable "webmethods_tmc_username" {
  type = string
}

variable "webmethods_tmc_password" {
  type = string
}

variable "webmethods_tmc_endpoint" {
  type = string
}

variable "webmethods_ca_file" {
  type = string
}

variable "webmethods_vcd_user" {
  type = string
}

variable "webmethods_vcd_pass" {
  type = string
  sensitive = true
  
}

variable "webmethods_vcd_org" {
  type = string
  
}

variable "webmethods_vcd_vdc" {
  type = string
}

variable "webmethods_vcd_url" {
  type = string
  
}

variable "webmethods_vcd_allow_unverified_ssl" {
  type = bool
  
}

variable "webmethods_vcd_max_retry_timeout" {

  
}

variable "webmethods_vdc_org_name" {
  type = string
}

variable "webmethods_vdc_group_name" {
  type = string
}

variable "webmethods_vdc_edge_name" {
  type = string
}

variable "webmethods_vdc_name" {
  type        = string
  description = "Cloud Director VDC Name"
  default     = ""
}

variable "webmethods_vdc_edge_name" {
  type        = string
  description = "Cloud Director Edge Name"
  default     = ""
}

variable "webmethods_vm_sizing_policy_name" {
  type    = string
  default = "gp2.4"
}

variable "webmethods_vapp_org_networks" {
  description = "List of vApp Org network names"
  type        = list(object({
    name      = string
  }))
  default     = []
}

variable "webmethods_is_fenced" {
  type    = bool
  default = false
  
}

variable "webmethods_retain_ip_mac_enabled" {
  type    = bool
  default = false
}

variable "webmethods_reboot_vapp_on_removal" {
  type    = bool
  default = true
}

variable "webmethods_catalog_org_name" {
  type = string
}

variable "webmethods_catalog_name" {
  type    = string
  default = ""
}

variable "webmethods_catalog_template_name" {
  type    = string
  default = ""
}

variable "webmethods_vapp_name" {
  type    = string
  default = "Production Application vApp"
}

variable "webmethods_vm_name_format" {
  type        = string
  description = "Format for the VM name"
  default     = "%s %02d"
}

variable "webmethods_vm_name" {
  type        = list(string)
  description = "List of VM names"
  default     = []
}

variable "webmethods_computer_name_format" {
  type        = string
  description = "Format for the computer name"
  default     = "%s-%02d"
}

variable "webmethods_computer_name" {
  type        = list(string)
  description = "List of computer names"
  default     = []
}

variable "webmethods_vm_cpu_hot_add_enabled" {
  type    = bool
  default = false
}

variable "webmethods_vm_memory_hot_add_enabled" {
  type    = bool
  default = false
}

variable "webmethods_vm_min_cpu" {
  type    = number
  default = 2
}

variable "webmethods_vm_count" {
  type    = number
  default = ""
}

variable "webmethods_vm_metadata_entries" {
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

variable "webmethods_disks_per_vm" {
  description = "Number of disks to assign to each VM"
  type        = number
  default     = 0
}

variable "webmethods_vm_disks" {
  description   = "List of disks per virtual machine"
  type          = list(object({
    name        = string
    bus_number  = number
    unit_number = number
  }))
  default     = []
}

variable "webmethods_network_interfaces" {
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

variable "webmethods_override_template_disks" {
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

variable "webmethods_vm_ips" {
  type    = list(string)
  default = [""]
}

variable "webmethods_vm_ips_index_multiplier" {
  description = "Number of network interfaces for each VM deployment"
  type        = number
  default     = 1
}

