
variable "tenancy_ocid" {
  type = string

}
variable "user_ocid" {
  type = string

}
variable "fingerprint" {
  type = string

}
variable "private_key_path" {
  type = string

}
variable "region" {
  type    = string
#default = "eu-frankfurt-1"
}

variable "compartment_ocid" {
  type = string

}

###################################################################
#Bastion Variables

variable "subnetid" {

}


variable "client_cidr" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}


variable "prefix" {
  description = "Service Name"
  default     = "cli"
}

variable "max_session_ttl_in_seconds" {
  default = 10800
}


variable "port" {
  default = "22"
}



variable "privateip" {
  type    = list(string)
  default = null
}

variable "ssh_public_key" {
  type    = string
  default = "OCI-openssh.pub"
}


variable "instance" {
  type = list(string)
  #default = ["10.10.1.41"]
  default = null
}

variable "username" {
  default = "opc"
}
