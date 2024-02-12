module "crm" {
  source = "./modules/crm"
  env = var.env
  vcd_allow_unverified_ssl = var.crm_vcd_allow_unverified_ssl
  vcd_max_retry_timeout = var.crm_vcd_max_retry_timeout
  vcd_org = var.crm_vcd_org
  vcd_pass = var.crm_vcd_pass
  vcd_url = var.crm_vcd_url
  vcd_user = var.crm_vcd_user
  vcd_vdc = var.crm_vcd_vdc
  vdc_edge_name = var.crm_vdc_edge_name
  vdc_group_name = var.crm_vdc_group_name
  vdc_name = var.crm_vdc_name
  vm_count = var.crm_vm_count
  vdc_org_name = var.crm_vdc_org_name
  vm_cpu_hot_add_enabled = var.crm_vm_cpu_hot_add_enabled
  catalog_org_name = var.crm_catalog_org_name
  catalog_template_name = var.crm_catalog_template_name
  
}


module "dms" {
  source = "./modules/dms"
  env = var.env
  vcd_allow_unverified_ssl = var.dms_vcd_allow_unverified_ssl
  vcd_max_retry_timeout = var.dms_vcd_max_retry_timeout
  vcd_org = var.dms_vcd_org
  vcd_pass = var.dms_vcd_pass
  vcd_user = var.dms_vcd_user
  vcd_url = var.dms_vcd_url
  vcd_vdc = var.dms_vcd_vdc
  vdc_group_name = var.dms_vdc_group_name
  vdc_org_name = var.dms_vdc_org_name
  catalog_org_name = var.dms_catalog_org_name
  }


module "iam" {
  source = "./modules/iam"
  env = var.env
  tkg_cluster_name = var.iam_tkg_cluster_name
  tmc_endpoint = var.iam_tmc_endpoint
  tmc_oidc_issuer = var.iam_tmc_oidc_issuer
  tmc_password = var.iam_tmc_password
  tmc_username = var.iam_tmc_username
  ca_file = var.iam_ca_file
  vcd_user = var.iam_vcd_user
  vcd_pass = var.iam_vcd_pass
  vcd_url = var.iam_vcd_url
  vdc_group_name = var.iam_vdc_group_name
  catalog_org_name = var.iam_catalog_org_name
  vdc_org_name = var.iam_vdc_org_name
  vcd_max_retry_timeout = var.iam_vcd_max_retry_timeout
  vcd_allow_unverified_ssl = var.iam_vcd_allow_unverified_ssl
  vcd_org = var.iam_vcd_org
  vcd_vdc = var.iam_vcd_vdc

}
module "ivr" {
  source = "./modules/ivr"
  env = var.env
  vcd_user = var.ivr_vcd_user
  vcd_pass = var.ivr_vcd_pass
  vcd_url = var.ivr_vcd_url
  vdc_group_name = var.ivr_vdc_group_name
  catalog_org_name = var.ivr_catalog_org_name
  vdc_org_name = var.ivr_vdc_org_name
  vcd_max_retry_timeout = var.ivr_vcd_max_retry_timeout
  vcd_allow_unverified_ssl = var.ivr_vcd_allow_unverified_ssl
  vcd_org = var.ivr_vcd_org
  vcd_vdc = var.ivr_vcd_vdc

}

module "liferay" {
  source = "./modules/liferay"
  env = var.env
  tkg_cluster_name = var.liferay_tkg_cluster_name
  vcd_allow_unverified_ssl = var.liferay_vcd_allow_unverified_ssl
  vcd_url = var.liferay_vcd_url
  vdc_group_name = var.liferay_vdc_group_name
  vdc_edge_name = var.liferay_vdc_edge_name
  catalog_org_name =var.liferay_catalog_org_name
  vcd_org = var.liferay_vcd_org
  vcd_max_retry_timeout =  var.liferay_vcd_max_retry_timeout
  vcd_pass = var.liferay_vcd_pass
  vcd_user = var.liferay_vcd_user
  vcd_vdc = var.liferay_vcd_vdc
  vdc_name = var.liferay_vdc_name
  vdc_org_name = var.liferay_vdc_org_name
  tmc_endpoint = var.liferay_tmc_endpoint
  tmc_oidc_issuer = var.liferay_tmc_oidc_issuer
  tmc_password = var.liferay_tmc_password
  tmc_username = var.liferay_tmc_username
  ca_file = var.liferay_ca_file
  vm_count = var.liferay_vm_count
}
module "teradata-dw" {
  source = "./modules/teradata-dw"
  env = var.env
  vcd_user = var.teradata_vcd_user
  vcd_pass = var.teradata_vcd_pass
  vcd_url = var.teradata_vcd_url
  vdc_group_name = var.teradata_vdc_group_name
  catalog_org_name = var.teradata_catalog_org_name
  vdc_org_name = var.teradata_vdc_org_name
  vcd_max_retry_timeout = var.teradata_vcd_max_retry_timeout
  vcd_allow_unverified_ssl = var.teradata_vcd_allow_unverified_ssl
  vcd_org = var.teradata_vcd_org
  vcd_vdc = var.teradata_vcd_vdc

}

module "webmethods" {
  source = "./modules/webmethods"
  env = var.env
  tkg_cluster_name = var.webmethods_tkg_cluster_name
  vcd_allow_unverified_ssl = var.webmethods_vcd_allow_unverified_ssl
  vcd_url = var.webmethods_vcd_url
  vdc_group_name = var.webmethods_vdc_group_name
  vdc_edge_name = var.webmethods_vdc_edge_name
  catalog_org_name =var.webmethods_catalog_org_name
  vcd_org = var.webmethods_vcd_org
  vcd_max_retry_timeout =  var.webmethods_vcd_max_retry_timeout
  vcd_pass = var.webmethods_vcd_pass
  vcd_user = var.webmethods_vcd_user
  vcd_vdc = var.webmethods_vcd_vdc
  vdc_name = var.webmethods_vdc_name
  vdc_org_name = var.webmethods_vdc_org_name
  tmc_endpoint = var.webmethods_tmc_endpoint
  tmc_oidc_issuer = var.webmethods_tmc_oidc_issuer
  tmc_password = var.webmethods_tmc_password
  tmc_username = var.webmethods_tmc_username
  ca_file = var.webmethods_ca_file
  vm_count = var.webmethods_vm_count

}
