

resource "oci_bastion_bastion" "BastionService" {
  bastion_type                 = "STANDARD"
  compartment_id               = var.compartment_ocid
  target_subnet_id             = var.subnetid
  client_cidr_block_allow_list = var.client_cidr
  name                         = "${var.prefix}BastionService"
  max_session_ttl_in_seconds   = var.max_session_ttl_in_seconds
}


module "managedSSH" {
  count            = var.instance != null ? 1 : 0
  source           = "./modules/managedSSH"
  compartment_ocid = var.compartment_ocid
  ssh_public_key   = var.ssh_public_key
  instance         = var.instance
  username         = var.username
  bastion_ocid     = oci_bastion_bastion.BastionService.id
}

module "PortForwarding" {
  count            = var.privateip != null ? 1 : 0
  source           = "./modules/PortForwarding"
  compartment_ocid = var.compartment_ocid
  ssh_public_key   = var.ssh_public_key
  privateip        = var.privateip
  port             = var.port
  bastion_ocid     = oci_bastion_bastion.BastionService.id
}
