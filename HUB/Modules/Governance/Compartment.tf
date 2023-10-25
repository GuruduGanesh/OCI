
####################
##Compartment File###
###################



resource "oci_identity_compartment" "HUB" {
    #Required
    compartment_id = var.root_compartment_id
    description = var.description
    name = var.compartment_name
    #Optional
    #defined_tags = {"Environment_tag.Environment"= "Hub"}
    #freeform_tags = {"Department"= "Finance"}
    #enable_delete = false 
    enable_delete = true
/*    depends_on = [
    oci_identity_tag_namespace.Environment_tag
    ] 
*/
}
