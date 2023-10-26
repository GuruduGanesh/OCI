
##  Input tenancy values ##
tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaa7m5xck4bqercwcqyjv44iigmut5uhetpvju5wkc6ygvd7mvo2ema"
user_ocid        = "ocid1.user.oc1..aaaaaaaayzdkth2z53voswdlc6kj53qmuxtsf2c4sn5cnv7vcbxfejx4yt3a"
fingerprint      = "df:91:f6:96:c6:9e:1e:f5:15:24:6b:87:59:86:6e:6b"
private_key_path = "/home/opc/.oci/Terraform.pem"
#private_key_path = Terraform.pem
region = "eu-frankfurt-1"

##################################
########### Compartment Name######

compartment_name = "HUB"
description      = "HUB compartment"





##########################
######## VCN Variables ##########
hubvcnname  = "vcn-prd-oci-db-ams"
hubvcncidrs = ["10.108.0.0/16"]
#############################
#####Groups need to create###
group_list = ["Hub_Admin",
  "Hub_Users"
]




########################
#### USer List########


user_list = [
]











####################
###HuB Subnet Ports ###
Firewall_SL_Port = [22, 3389]
Mgmt_SL_Port     = [22, 3389]
Monitor_SL_Port  = [22, 3389]
LB_SL_Port       = [22, 3389]




