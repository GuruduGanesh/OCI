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



