
##### define Groups In tenancy#####


resource "oci_identity_group" "Hub" {
  for_each       =  var.group_list
  name           =  each.value
  #description    =  "For ${oci_identity_group.Hub_Admin[each.value]}  group" 
  description    =  "To Manage Permission on this Group" 
  compartment_id =  var.root_compartment_id 
}
