#######LB Route Table###

resource "oci_core_route_table" "LB_RT" {
    #Required
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.vcn.id

    #Optional
    display_name = "LB_RT"
    route_rules {
        #Required
        network_entity_id = oci_core_internet_gateway.IG.id

        #Optional
      #  cidr_block = "0.0.0.0/0"
      #  description = var.route_table_route_rules_description
        destination = "0.0.0.0/0"
      #  destination_type = var.route_table_route_rules_destination_type
    }
}



####### Firewall Route Table###

resource "oci_core_route_table" "Firewall_RT" {
    #Required
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.vcn.id

    #Optional
    display_name = "Firewall_RT"
    route_rules {
        #Required
        network_entity_id = oci_core_nat_gateway.NG.id

        #Optional
      #  cidr_block = "0.0.0.0/0"
      #  description = var.route_table_route_rules_description
        destination = "0.0.0.0/0" 
      #  destination_type = var.route_table_route_rules_destination_type
    }
}




########## Mgmt Route Table###



resource "oci_core_route_table" "Mgmt_RT" {
    #Required
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.vcn.id

    #Optional
    display_name = "Mgmt_RT"
    #route_rules {
        #Required
      #  network_entity_id = oci_core_nat_gateway.NG.id

        #Optional
      #  cidr_block = "0.0.0.0/0"
      #  description = var.route_table_route_rules_description
      #  destination = var.route_table_route_rules_destination
      #  destination_type = var.route_table_route_rules_destination_type
    }


######### Monitoring Route Table####



resource "oci_core_route_table" "Monitor_RT" {
    #Required
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.vcn.id

    #Optional
    display_name = "Monitor_RT"
    #route_rules {
        #Required
      #  network_entity_id = oci_core_nat_gateway.NG.id

        #Optional
      #  cidr_block = "0.0.0.0/0"
      #  description = var.route_table_route_rules_description
      #  destination = var.route_table_route_rules_destination
      #  destination_type = var.route_table_route_rules_destination_type
    }
