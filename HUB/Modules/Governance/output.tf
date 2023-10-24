
output "compartment_id" {
#  value = var.tenancy_ocid
  value = oci_identity_compartment.HUB.id 
}


output "tag_id" {
   value = oci_identity_tag_namespace.Environment_tag.id
} 
