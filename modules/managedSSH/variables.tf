variable "instance" {
  type = list(string)
  default = [""]
}


variable "ssh_public_key" {
  type = string
}

variable "username" {
  default = "opc"
}

variable "compartment_ocid" {
  type = string

}

variable "bastion_ocid" {

}
