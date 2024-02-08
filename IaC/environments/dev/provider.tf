# https://registry.terraform.io/providers/vmware/tanzu-mission-control/latest/docs
# https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs

terraform {
  required_providers {
    tanzu-mission-control = {
      source = "vmware/tanzu-mission-control"
      version = "1.4.2"
    }
    vsphere = {
      source = "hashicorp/vsphere"
      version = "2.6.1"
    }
  }
}


# Provider configuration for TMC Self-Managed
provider "tanzu-mission-control" {
  endpoint = var.endpoint # optionally use TMC_ENDPOINT env var

  self_managed {
    oidc_issuer = var.oidc_issuer # optionally use OIDC_ISSUER env var,  Ex: export OIDC_ISSUER=pinniped-supervisor.example.local-dev.tmc.com
    username    = var.username    # optionally use TMC_SM_USERNAME env var
    password    = var.password    # optionally use TMC_SM_PASSWORD env var
  }
  ca_file = var.ca_file # Path to Host's root ca set. The certificates issued by the issuer should be trusted by the host accessing TMC Self-Managed via TMC terraform provider.
}

provider "vsphere" {
  user                 = var.vsphere_user
  password             = var.vsphere_password
  vsphere_server       = var.vsphere_server
  allow_unverified_ssl = true
}