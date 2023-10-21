


### HUB VCN Code ######

resource "oci_core_vcn" "vcn" {
  cidr_blocks    = var.hubvcn_cidrs
  compartment_id = var.compartment_id
  display_name   = var.hubvcn_name
}
