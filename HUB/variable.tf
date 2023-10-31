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
  description = "HUB Compartment Description"
  type        = string
}



variable "group_list" {
  type = set(string)
}

variable "user_list" {
  type = set(string)
}
#########################
####### Network Module Variable #####

variable "hubvcnname" {
  description = "VCN NAME"
  type        = string
}

variable "hubvcncidrs" {
  description = "VCN CIDR"
  type        = list(any)
}


variable "Firewall_SL_Port" {
  description = "Firewall Port"
  type        = list(any)
}

variable "Mgmt_SL_Port" {
  description = "Mgmt Port"
  type        = list(any)
}

variable "Monitor_SL_Port" {
  description = "Monitor Port"
  type        = list(any)
}


variable "LB_SL_Port" {
  description = "LB Port"
  type        = list(any)
}

