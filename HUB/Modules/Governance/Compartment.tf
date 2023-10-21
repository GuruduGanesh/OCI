
####################
##Compartment File###
###################



resource "oci_identity_compartment" "HUB" {
    #Required
    compartment_id = var.root_compartment_id
    description = var.description
    name = var.compartment_name
    #Optional
    #defined_tags = {"Operations.CostCenter"= "42"}
    #freeform_tags = {"Department"= "Finance"}
}
