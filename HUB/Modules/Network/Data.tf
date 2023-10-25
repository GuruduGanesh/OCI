# ------ Get All Service OCID
data "oci_core_services" "AllRegionServices" {
  filter {
    name   = "cidr_block"
    values = ["all-*"]
    regex  = true
  }
}
locals {
  all_services_id          = data.oci_core_services.AllRegionServices.services[0].id
  all_services_destination = data.oci_core_services.AllRegionServices.services[0].cidr_block
}
