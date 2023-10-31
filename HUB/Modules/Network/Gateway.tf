####### Internet gateway###

resource "oci_core_internet_gateway" "IG" {
    # Required
    compartment_id = var.compartment_id
    vcn_id         = oci_core_vcn.vcn.id
    # Optional
    enabled        = true
    display_name   = "IG"
    #route_table_id =
}




###### NAT GAteway####

resource "oci_core_nat_gateway" "NG" {
    # Required
    compartment_id = var.compartment_id
    vcn_id         = oci_core_vcn.vcn.id
    # Optional
    display_name   = "NG"
    block_traffic  = false
}


########### SG Gateway###


resource "oci_core_service_gateway" "SG" {
    # Required
    compartment_id = var.compartment_id
    vcn_id         = oci_core_vcn.vcn.id
    services {
        service_id = local.all_services_id
    }
    # Optional
    display_name   = "SG"
}



###### DRG ####


resource "oci_core_drg" "DRG" {
    #Required
    compartment_id = var.compartment_id

    #Optional
    display_name = "DRG"
}




resource "oci_core_drg_attachment" "HUB_Hop" {
    #Required
    drg_id = oci_core_drg.DRG.id

    #Optional
    display_name = "HUB_Hop"
    network_details {
        #Required
        id = oci_core_vcn.vcn.id
        type = "VCN"
    }
}

####################
