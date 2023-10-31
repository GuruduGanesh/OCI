##### Subnet Firewall ##########

resource "oci_core_subnet" "Firewall_Subnet" {
    # Required
   count = 1
    compartment_id             = var.compartment_id
    vcn_id                     = oci_core_vcn.vcn.id
    cidr_block                 = local.Firewall_CIDR
    # cidr_block                 = "${replace(var.hubvcn_cidrs[count.index], "/16", "/20")}"
    # Optional
    display_name               = "Firewall_Subnet"
    #dns_label                  = "mgmt-private-su"
    security_list_ids          = [oci_core_security_list.Firewall_SL.id]
    route_table_id             = oci_core_route_table.Firewall_RT.id
    prohibit_public_ip_on_vnic = true 
}


######### Subnet Mgmt ###########

resource "oci_core_subnet" "Mgmt_Subnet" {
    # Required
   count = 1
    compartment_id             = var.compartment_id
    vcn_id                     = oci_core_vcn.vcn.id
    #cidr_block                 = "${var.hubvcn_cidrs[count.index]}"
    cidr_block                 = local.Mgmt_CIDR 
    # Optional
    display_name               = "Mgmt_Subnet"
    #dns_label                  = "mgmt-private-su"
    security_list_ids          = [oci_core_security_list.Mgmt_SL.id]
    route_table_id             = oci_core_route_table.Mgmt_RT.id
    prohibit_public_ip_on_vnic =true 
}


########## LB Subnet ######


resource "oci_core_subnet" "LB_Subnet" {
    # Required
   count = 1
    compartment_id             = var.compartment_id
    vcn_id                     = oci_core_vcn.vcn.id
    #cidr_block                 = "${var.hubvcn_cidrs[count.index]}"
    cidr_block                 = local.LB_CIDR
    # Optional
    display_name               = "LB_Subnet"
    #dns_label                  = "mgmt-private-su"
    security_list_ids          = [oci_core_security_list.LB_SL.id]
    route_table_id             = oci_core_route_table.LB_RT.id
    prohibit_public_ip_on_vnic = false
}

############ Monitor Subnet #####


resource "oci_core_subnet" "Monitor_Subnet" {
    # Required
   count = 1
    compartment_id             = var.compartment_id
    vcn_id                     = oci_core_vcn.vcn.id
    #cidr_block                 = "${var.hubvcn_cidrs[count.index]}"
    cidr_block                 = local.Monitor_CIDR
    # Optional
    display_name               = "Monitor_Subnet"
    #dns_label                  = "-private-su"
    security_list_ids          = [oci_core_security_list.Monitor_SL.id]
    route_table_id             = oci_core_route_table.Monitor_RT.id
    prohibit_public_ip_on_vnic = true
}
