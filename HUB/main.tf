#####################################
####### Main File For HUB ###########
#####################################

### Governance Module to create HUB Compartment###


module "Compartment" {
source = "./Modules/Governance"
root_compartment_id = local.root_compartment_id
compartment_name = var.compartment_name
description = var.description 
}



## Network Module for HUB ####

module "Network" {
source = "./Modules/Network"
hubvcn_cidrs = var.hubvcncidrs
hubvcn_name = var.hubvcnname
compartment_id = module.Compartment.compartment_id
}

