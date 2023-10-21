output "Root_Compartment_ID" {
#  value = var.tenancy_ocid 
  value = local.root_compartment_id
}



output "HUB_Compartment_Name" {
value = var.compartment_name
}

/*
output "HUB_Compartment_ID" {
value = module.Compartment.id
}
*/
