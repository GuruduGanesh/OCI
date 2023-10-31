locals {
   vcn_id=oci_core_vcn.vcn.id
   Firewall_CIDR = "10.108.16.0/20" 
   Mgmt_CIDR = "10.108.48.0/20" 
   LB_CIDR = "10.108.80.0/20" 
   Monitor_CIDR = "10.108.112.0/20" 
}

