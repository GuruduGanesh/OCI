##### Subnet Firewall ##########

resource "oci_core_subnet" "Firewall_Subnet" {
    # Required
    compartment_id             = var.compartment_id
    vcn_id                     = oci_core_vcn.vcn.id
    cidr_block                 = substr("${oci_core_vcn.vcn.cidr_blocks[0]}", -3, 1)
    # Optional
    display_name               = "Firewall"
    #dns_label                  = "mgmt-private-su"
    security_list_ids          = oci_core_security_list.Firewall_SL.id[0]
    route_table_id             = oci_core_route_table.Firewall_RT.id
    prohibit_public_ip_on_vnic = false
}
