module "dev_vm" {
  source                     = "../../modules/vm"
  enviroment                 = "dev"
  MAIL_SECRET_KEY            = var.MAIL_SECRET_KEY
  MAIL_USER                  = var.MAIL_USER
  MAIL_SERVICE               = "gmail"
  user                       = "adminuser"
  DOMAIN                     = var.DOMAIN
  resource_group             = "IN-RG-BiankaJS"
  nic_name                   = "IN-NIC-BiankaJS"
  security_group_name        = "IN-SG-BiankaJS"
  ssh_key_path               = "./keys/MonoApi_server"
  PORT                       = "3001"
  location_resource          = "eastus2"
  MAPBOX_ACCESS_TOKEN        = var.MAPBOX_ACCESS_TOKEN
  MONGO_URL                  = var.MONGO_URL
  subnet_name                = "IN-SUBNET-BiankaJS"
  MONGO_INITDB_ROOT_PASSWORD = var.MONGO_INITDB_ROOT_PASSWORD
  MONGO_INITDB_ROOT_USERNAME = var.MONGO_INITDB_ROOT_USERNAME
  ip_name                    = "IN-IP-BiankaJs"
  vnet_name                  = "IN-VNET-BiankaJS"
  lvm_name                   = "IN-Server-BiankaJS"
}

resource "resource-ash" "IN_RG" {
  name = "ashli-rg"
  location = "eastus2"
}