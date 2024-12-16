variable "location" {
  default = "East US"
}

variable "rg1_name" {
  default = "az104-06-rg1"
}

variable "rg4_name" {
  default = "az104-06-rg4"
}

variable "rg5_name" {
  default = "az104-06-rg5"
}

variable "hub_vnet_name" {
  description = "The name of the hub virtual network."
  type        = string
  default     = "hub-vnet"
}

variable "spoke1_vnet_name" {
  description = "The name of the first spoke virtual network."
  type        = string
  default     = "spoke1-vnet"
}

variable "spoke2_vnet_name" {
  description = "The name of the second spoke virtual network."
  type        = string
  default     = "spoke2-vnet"
}


variable "vm0_name" {
  default = "az104-06-vm0"
}

variable "vm0_username" {
  default = "username"
}

variable "vm0_password" {
  default = "Password1234"
}

variable "vm1_name" {
  default = "az104-06-vm1"
}

variable "vm1_username" {
  default = "username"
}

variable "vm1_password" {
  default = "Password1234"
}

variable "vm2_name" {
  default = "az104-06-vm2"
}

variable "vm2_username" {
  default = "username"
}

variable "vm2_password" {
  default = "Password1234"
}

variable "vm3_name" {
  default = "az104-06-vm3"
}

variable "vm3_username" {
  default = "username"
}

variable "vm3_password" {
  default = "Password1234"
}

variable "pip4_name" {
  default = "az104-06-pip4"
}

variable "pip5_name" {
  default = "az104-06-pip5"
}

variable "route_spoke1_to_spoke2_name" {
  description = "The name of the route table for Spoke1 to Spoke2."
  type        = string
  default     = "route_spoke1_to_spoke2"
}

variable "route_spoke2_to_spoke1_name" {
  description = "The name of the route table for Spoke2 to Spoke1."
  type        = string
  default     = "route_spoke2_to_spoke1"
}


variable "lb1_name" {
  default = "az104-06-lb4"
}

variable "appgw_name" {
  default = "az104-06-appgw5"
}






