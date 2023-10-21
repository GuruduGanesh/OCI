
output "id" {
#  value = var.tenancy_ocid
  value = oci_identity_compartment.HUB.id 
}

