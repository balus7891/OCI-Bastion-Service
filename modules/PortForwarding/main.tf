resource "oci_bastion_session" "bastion_session" {
  count      = length(var.privateip)
  bastion_id = var.bastion_ocid
  key_details {
    public_key_content = var.ssh_public_key
  }
  target_resource_details {
    target_resource_id                 = ""
    session_type                       = "PORT_FORWARDING"
    target_resource_port               = var.port
    target_resource_private_ip_address = var.privateip[count.index]
  }

  display_name           = "PORT_FORWARDING-Session-${count.index + 1}"
  key_type               = "PUB"
  session_ttl_in_seconds = 10800

  lifecycle {
    ignore_changes = [target_resource_details[0].target_resource_id]
  }

}
