variable "rg_name" {}
variable "rg_location" {}
variable "vnet_name" {
    default = "pranav-module-vnet"
}
variable "address_space" {
    type = set(string)
}
variable "vm_name" {
    default = "pranav-module-vm"
}
variable "admin_username" {}
variable "admin_password" {}
variable "vm_size" {}
variable "address_prefixes" {
    type = set(string)
}
variable "ssh-rule" {
    default = "22"
}
variable "http-rule" {
    default = "80"
}

variable "sub_name" {
  default = "module-default-subnet"
}

variable "public_ip_name" {
  default = "module_default_public_ip"
}

variable "nic_name" {
  default = "module_default_nic"
}

variable "sg_name" {
  default = "module_default_sg"
}
variable "publisher" {}
variable "offer" {}
variable "sku" {}
variable "os_version" {
  default = "latest"
}