#####################################
####### Main File For HUB ###########
#####################################

### Governance Module to create HUB Compartment###


module "Compartment" {
  source              = "./Modules/Governance"
  root_compartment_id = local.root_compartment_id
  compartment_name    = var.compartment_name
  description         = var.description
  group_list          = var.group_list
  user_list           = var.user_list
}



## Network Module for HUB ####

module "Network" {
  source           = "./Modules/Network"
  hubvcn_cidrs     = var.hubvcncidrs
  hubvcn_name      = var.hubvcnname
  compartment_id   = module.Compartment.compartment_id
  Firewall_SL_Port = var.Firewall_SL_Port
  Mgmt_SL_Port     = var.Mgmt_SL_Port
  Monitor_SL_Port  = var.Monitor_SL_Port
  LB_SL_Port       = var.LB_SL_Port
}

