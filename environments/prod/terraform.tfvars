environment             = "prod"
location                = "westeurope"
vnet_address_space      = ["10.0.0.0/16"]
subnet_name             = "prod-subnet"
subnet_address_prefixes = ["10.0.2.0/24"]
tags = {
  environment = "prod"
}
