

######### Variable For Compartment###

variable "root_compartment_id" {
   # get root compartment id from Root Compartment
   description = "Define Root Compartment"
   type        = string
}


variable "compartment_name" {
   # get root compartment id from Root Compartment
   description = "Define compartment NAME"
   type        = string
}


variable "description" {
   # get root compartment id from Root Compartment
   description = "Define compartment NAME"
   type        = string
}








###### Group Variable ######

variable "group_list" {
  type = set(string)
  }



######  User Variable #####

variable "user_list" {
   type = set(string)
  }
