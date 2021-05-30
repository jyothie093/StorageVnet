variable "resource_group" {
default   = "StorageRG1"
}
variable "location" {
default = "west us"
}
variable "vnet_name" {
default = "SttorageVnet1"
}
variable "address_space" {
default = "192.0.0.0/16"
description = "vnet address space"
}
variable "subnet_names" {
  type    = map
  default = { 
dbsubnet  = "192.0.1.0/24" 
testsubnet = "192.0.4.0/24"
appsubnet = "192.0.2.0/24"
qasubnet  = "192.0.5.0/24"
websubnet = "192.0.3.0/24"
}
}
