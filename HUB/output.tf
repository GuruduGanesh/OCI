/*
output "Root_Compartment_ID" {
  #  value = var.tenancy_ocid 
  value = local.root_compartment_id
}
*/


output "HUB_Compartment_Name" {
  value = var.compartment_name
}

/*
output "TAG_Namespace_id" {
value = module.Compartment.tag_id
}

*/



output "HUbCIDR" {
value = module.Network.hubcidr
}
