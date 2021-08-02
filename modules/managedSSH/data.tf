
data "oci_core_instances" "test_instances" {
  compartment_id = var.compartment_ocid

}

locals {
  name-id = zipmap(data.oci_core_instances.test_instances.instances[*].display_name, data.oci_core_instances.test_instances.instances[*].id)
}

locals {
  Number-of-instances = length(data.oci_core_instances.test_instances.instances[*].display_name)
}

data "oci_core_instance" "test_instance1" {
  #Required
  count       = length(data.oci_core_instances.test_instances.instances[*].id)
  instance_id = data.oci_core_instances.test_instances.instances[count.index].id
}
/*
locals {
  ip = zipmap(data.oci_core_instance.test_instance1[*].private_ip, data.oci_core_instances.test_instances.instances[*].id)
}
*/
locals {
    ip = zipmap(formatlist("%v", data.oci_core_instance.test_instance1[*].private_ip), data.oci_core_instances.test_instances.instances[*].id)
}
