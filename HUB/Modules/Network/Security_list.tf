###### Firewall Security List####

resource "oci_core_security_list" "Firewall_SL" {
  #Required
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.vcn.id 

  #Optional
  
display_name = "Firewall_SL"
  egress_security_rules {
    #Required
   description = "Allow all traffic from Internet"  
destination = var.anywhere
    protocol    = "ALL"
  }
  dynamic "ingress_security_rules" {
    for_each = var.Firewall_SL_Port
    content {
      protocol = "6"
      source   = var.oci_range
      tcp_options {
        max = ingress_security_rules.value
        min = ingress_security_rules.value
        } 
      }
    }
  }



####  Mgmt Security List #####

resource "oci_core_security_list" "Mgmt_SL" {
  #Required
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.vcn.id

  #Optional

display_name = "Mgmt_SL"
  egress_security_rules {
    #Required
   description = "Allow all traffic from Internet"
destination = var.anywhere
    protocol    = "ALL"
  }
  dynamic "ingress_security_rules" {
    for_each = var.Mgmt_SL_Port
    content {
      protocol = "6"
      source   = var.oci_range
      tcp_options {
        max = ingress_security_rules.value
        min = ingress_security_rules.value
        }
      }
    }
  }


########################
### Security List for Monitoring##
##########################


resource "oci_core_security_list" "Monitor_SL" {
  #Required
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.vcn.id

  #Optional

display_name = "Monitor_SL"
  egress_security_rules {
    #Required
   description = "Allow all traffic from Internet"
destination = var.anywhere
    protocol    = "ALL"
  }
  dynamic "ingress_security_rules" {
    for_each = var.Monitor_SL_Port
    content {
      protocol = "6"
      source   = var.oci_range
      tcp_options {
        max = ingress_security_rules.value
        min = ingress_security_rules.value
        }
      }
    }
  }



####################
#######################
### Security LB SL
#####################

resource "oci_core_security_list" "LB_SL" {
  #Required
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.vcn.id

  #Optional

display_name = "LB_SL"
  egress_security_rules {
    #Required
   description = "Allow all traffic from Internet"
destination = var.anywhere
    protocol    = "ALL"
  }
  dynamic "ingress_security_rules" {
    for_each = var.LB_SL_Port
    content {
      protocol = "6"
      source   = var.oci_range
      tcp_options {
        max = ingress_security_rules.value
        min = ingress_security_rules.value
        }
      }
    }
  }

#####################
