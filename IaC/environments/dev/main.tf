module "crm" {
  source = "./modules/crm"

}
module "dms" {
  source = "./modules/dms"

}
module "iam" {
  source = "./modules/iam"
  env = var.env
  tkg_cluster_name = var.iam_tkg_cluster_name
}
module "ivr" {
  source = "./modules/ivr"

}
module "liferay" {
  source = "./modules/liferay"
  env = var.env
  tkg_cluster_name = var.liferay_tkg_cluster_name

}
module "teradata-dw" {
  source = "./modules/teradata-dw"

}
module "webmethods" {
  source = "./modules/webmethods"
  env = var.env
  tkg_cluster_name = var.webmethods_tkg_cluster_name
}
