terraform {
  required_providers {
    oci = {
      source = "hashicorp/oci"
      version = "4.37.0"
    }
  }
}


provider "oci" {
#  version          = "> 3.0.0"
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}
