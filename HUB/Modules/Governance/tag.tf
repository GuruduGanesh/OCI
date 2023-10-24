


#### Code for Tag Namesapce #####

resource "oci_identity_tag_namespace" "Environment_tag" {
    #Required
    compartment_id = var.root_compartment_id
    description = "For envirnment tags" 
    name = "Environment_tag"

    #Optional
    #defined_tags = {"Operations.CostCenter"= "42"}
    #freeform_tags = {"Department"= "Finance"}
    is_retired = false
}




resource "oci_identity_tag" "Environment" {
    #Required
    description = "Tag for Environment"
    name = "Environment"
    tag_namespace_id = oci_identity_tag_namespace.Environment_tag.id
    #Optional
    #defined_tags = {"Operations.CostCenter"= "42"}
    #freeform_tags = {"Department"= "Finance"}
    is_cost_tracking = true
    validator {
        #Required
        validator_type = "ENUM" 
        values = ["Root","Hub","Production","DB"]
    }
    is_retired = false
}


resource "oci_identity_tag_default" "hub_default" {
    #Required
    compartment_id = oci_identity_compartment.HUB.compartment_id
    tag_definition_id = oci_identity_tag.Environment.id
    value = "Hub"

    #Optional
    is_required = true
}
