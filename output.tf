output "Oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo" {
  value = "ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo"
}


output "Port-Forwarding-SSH-Metadata" {
  value = flatten(module.PortForwarding.*.Port-Forwarding-SSH-Metadata)
}



output "Managed-SSH-Metadata" {
  value = module.managedSSH.*.Managed-SSH-Metadata
}
