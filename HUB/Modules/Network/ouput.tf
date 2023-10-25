########## VCN ID #########
output "vcn_id"{
value = oci_core_vcn.vcn.id
}


output "hubcidr"{
value =oci_core_vcn.vcn.cidr_blocks
}
