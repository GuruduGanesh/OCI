####### To Create Users####
resource "oci_identity_user" "Users" {
    #Required
    compartment_id = var.root_compartment_id
    description = "User to Manage Environment"
    for_each = var.user_list
    name =  each.value
    email = each.value
#name =  each.value 
#email = each.value 
}
