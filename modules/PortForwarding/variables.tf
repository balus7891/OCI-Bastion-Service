variable "port" {
}

variable "privateip" {
  type = list(string)
}

variable "ssh_public_key" {
  type = string
}

variable "compartment_ocid" {
  type = string

}

variable "bastion_ocid" {

}
