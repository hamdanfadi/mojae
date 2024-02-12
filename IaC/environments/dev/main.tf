module "crm" {
  source = "./modules/crm"

}
module "dms" {
  source = "./modules/dms"

}
module "iam" {
  source = "./modules/iam"
  env = var.env
  tkg_cluster_name               = var.iam_tkg_cluster_name
  cluster_group                  = var.iam_cluster_group                 
  pods_cidr_block                = var.iam_pods_cidr_block               
  services_cidr_block            = var.iam_services_cidr_block           
  api_server_port                = var.iam_api_server_port               
  control_plane_end_point        = var.iam_control_plane_end_point       
  ssh_key                        = var.iam_ssh_key                       
  os_arch                        = var.iam_os_arch                       
  os_name                        = var.iam_os_name                       
  os_version                     = var.iam_os_version                    
  distribution_version           = var.iam_distribution_version          
  workspace_datacenter           = var.iam_workspace_datacenter          
  workspace_datastore            = var.iam_workspace_datastore           
  workspace_network              = var.iam_workspace_network             
  workspace_folder               = var.iam_workspace_folder              
  workspace_resource_pool        = var.iam_workspace_resource_pool       
  control_plan_cpu               = var.iam_control_plan_cpu              
  control_plan_disk_size         = var.iam_control_plan_disk_size        
  control_plan_memory            = var.iam_control_plan_memory           
  control_plan_high_availability = var.iam_control_plan_high_availability
  node_pools_worker_node_count   = var.iam_node_pools_worker_node_count  
  node_pools_cpu                 = var.iam_node_pools_cpu                
  node_pools_disk_size           = var.iam_node_pools_disk_size          
  node_pools_memory              = var.iam_node_pools_memory        
}
module "ivr" {
  source = "./modules/ivr"

}
module "liferay" {
  source = "./modules/liferay"
  env = var.env
  tkg_cluster_name               = var.liferay_tkg_cluster_name
  cluster_group                  = var.liferay_cluster_group                 
  pods_cidr_block                = var.liferay_pods_cidr_block               
  services_cidr_block            = var.liferay_services_cidr_block           
  api_server_port                = var.liferay_api_server_port               
  control_plane_end_point        = var.liferay_control_plane_end_point       
  ssh_key                        = var.liferay_ssh_key                       
  os_arch                        = var.liferay_os_arch                       
  os_name                        = var.liferay_os_name                       
  os_version                     = var.liferay_os_version                    
  distribution_version           = var.liferay_distribution_version          
  workspace_datacenter           = var.liferay_workspace_datacenter          
  workspace_datastore            = var.liferay_workspace_datastore           
  workspace_network              = var.liferay_workspace_network             
  workspace_folder               = var.liferay_workspace_folder              
  workspace_resource_pool        = var.liferay_workspace_resource_pool       
  control_plan_cpu               = var.liferay_control_plan_cpu              
  control_plan_disk_size         = var.liferay_control_plan_disk_size        
  control_plan_memory            = var.liferay_control_plan_memory           
  control_plan_high_availability = var.liferay_control_plan_high_availability
  node_pools_worker_node_count   = var.liferay_node_pools_worker_node_count  
  node_pools_cpu                 = var.liferay_node_pools_cpu                
  node_pools_disk_size           = var.liferay_node_pools_disk_size          
  node_pools_memory              = var.liferay_node_pools_memory             

}
module "teradata-dw" {
  source = "./modules/teradata-dw"

}
module "webmethods" {
  source = "./modules/webmethods"
  env = var.env
  tkg_cluster_name               = var.webmethods_tkg_cluster_name
  cluster_group                  = var.webmethods_cluster_group                 
  pods_cidr_block                = var.webmethods_pods_cidr_block               
  services_cidr_block            = var.webmethods_services_cidr_block           
  api_server_port                = var.webmethods_api_server_port               
  control_plane_end_point        = var.webmethods_control_plane_end_point       
  ssh_key                        = var.webmethods_ssh_key                       
  os_arch                        = var.webmethods_os_arch                       
  os_name                        = var.webmethods_os_name                       
  os_version                     = var.webmethods_os_version                    
  distribution_version           = var.webmethods_distribution_version          
  workspace_datacenter           = var.webmethods_workspace_datacenter          
  workspace_datastore            = var.webmethods_workspace_datastore           
  workspace_network              = var.webmethods_workspace_network             
  workspace_folder               = var.webmethods_workspace_folder              
  workspace_resource_pool        = var.webmethods_workspace_resource_pool       
  control_plan_cpu               = var.webmethods_control_plan_cpu              
  control_plan_disk_size         = var.webmethods_control_plan_disk_size        
  control_plan_memory            = var.webmethods_control_plan_memory           
  control_plan_high_availability = var.webmethods_control_plan_high_availability
  node_pools_worker_node_count   = var.webmethods_node_pools_worker_node_count  
  node_pools_cpu                 = var.webmethods_node_pools_cpu                
  node_pools_disk_size           = var.webmethods_node_pools_disk_size          
  node_pools_memory              = var.webmethods_node_pools_memory             

}
