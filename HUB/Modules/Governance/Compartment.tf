
####################
##Compartment File###
###################



resource "oci_identity_compartment" "HUB" {
    #Required
    compartment_id = var.root_compartment_id
    description = var.description
    name = var.compartment_name
    #Optional
    defined_tags = {"Environment_tag.Environment"= "Hub"}
    #freeform_tags = {"Department"= "Finance"}
    enable_delete = true 
}
