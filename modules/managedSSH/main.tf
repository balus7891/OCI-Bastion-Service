resource "oci_bastion_session" "managedSSH" {
  #count      = var.session
  count      = length(var.instance)
  bastion_id = var.bastion_ocid

  key_details {
    public_key_content = var.ssh_public_key
  }
  target_resource_details {
    session_type = "MANAGED_SSH"
    target_resource_id = lookup(local.ip, var.instance[count.index])
    #Optional
    target_resource_operating_system_user_name = var.username
    target_resource_port                       = 22
    target_resource_private_ip_address         = var.instance[count.index]
  }

  display_name           = "Managed-SSH-Session-${count.index + 1}"
  key_type               = "PUB"
  session_ttl_in_seconds = 10800
}
