## Tenancy Details ##
variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}
#variable "compartment_id" {}





###############################################
####### Governannce Module Variable ##########
############################################

variable "compartment_name" {
   # get root compartment id from Root Compartment
   description = "Define Root NAME"
   type        = string
}


variable "description" {
   # get root compartment id from Root Compartment
   description = "HUB COmpartment Description"
   type        = string
}






###########################
####### Network Module Variable #####

variable "hubvcnname" {
    description = "VCN NAME"
    type = string
}

variable "hubvcncidrs" {
    description = "VCN CIDR"
    type = list
}

