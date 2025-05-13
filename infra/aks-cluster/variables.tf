variable "resource_group_name" {
  default = "ikurtz-aks-rg"
}

variable "location" {
  default = "East US"
}

variable "cluster_name" {
  default = "ikurtz-tour-of-heroes-aks"
}

variable "dns_prefix" {
  default = "ikurtztohaks"
}

variable "node_pool_name" {
  default = "ikurtztohaks"
}

variable "vm_size" {
  default = "Standard_DS2_v3"
}