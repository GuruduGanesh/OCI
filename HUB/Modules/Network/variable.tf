#### HUB VCN Details######

variable "hubvcn_cidrs" {
   description = "HUB CIDR BLOCK"
   type        = list 
   #default     = ["10.0.0.0/16"]
}


variable "compartment_id" {
   description = "HUB CIDR BLOCK"
   type        = string
   #default     = "ocid1.tenancy.oc1..aaaaaaaa7m5xck4bqercwcqyjv44iigmut5uhetpvju5wkc6ygvd7mvo2ema"
}


variable "hubvcn_name" {
   description = "HUB CIDR BLOCK"
   type        = string 
   #default     = "HUB_VCN"
}


################ Security List variables ##############
variable "Firewall_SL_Port" {
default = []
}


variable "Mgmt_SL_Port" {
default = []
}

variable "Monitor_SL_Port" {
default = []
}

variable "LB_SL_Port" {
default = []
}



variable "anywhere" {
default = "0.0.0.0/0"
}

variable "oci_range" {
default = "10.108.0.0/20"
}

