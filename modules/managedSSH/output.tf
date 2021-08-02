output "Managed-SSH-Metadata"{
  value = oci_bastion_session.managedSSH.*.ssh_metadata
}
