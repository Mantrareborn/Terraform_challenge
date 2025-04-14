variable "vnet_name" {
    description = "Name of the VNET"
    type = string
}
variable "location" {
    type = string
}
variable "resource_group_name" {
    description = "Name of the RG"
    type = string
}
variable "address_space" {
    description = "VNET @ space"
    type = list(string)
    default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the subnet"
  type        = list(string)
}

variable "tags" {
    description = "Reource tags"
    type    = map(string)
    default = {}
}
