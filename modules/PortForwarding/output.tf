output "Port-Forwarding-SSH-Metadata"{
  value = oci_bastion_session.bastion_session[*].ssh_metadata
}
