

#Necessary fields to connect to your target OCI tenancy
ssh_public_key   = "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAkRO/LmxbJ0ZCOefcRwxVSN1THNNLzqU8lCX6FCOYCYBj+jqazL7vCEgxNP9UYQZOy6TxnW6oMjTZT05XN9u6cPK4hDPIepdwvfpiJIHTBOZL038M3NSA620mwzPKdHzOqbYjuq3WKAUPWKmBAeFDNprFxK3ReahngPqpKAN2s0f2pM9dM6qlqgVK2l2iaXe3acbv4sxFz8ljXTtSZUQQm/YAAtPimwgQ/Plhn/Cp2AbLUaXWM7K6BZeJ8mWQXcDPFAJYefTl6IUEP41+HwG5z0EE/5vdrWZHMv1HdHuEoeTVHk+orBUm1nWV2fpNqq4S7Dk9HYgK18h3+L9pzwGPoQ== Bala_Sunil_SSHkey"
tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaaxn3r3dh3lh5n5hyo6tkbtmwjvr4wzlahs3u76c4enhckxhy4kpaa"
user_ocid        = "ocid1.user.oc1..aaaaaaaaxbo27vvlxwem7emof4iiznr2twqnegg2mgmsxdil44br42ymwowq"
fingerprint      = "87:18:64:9a:45:3c:b1:07:02:25:5d:3f:53:d8:9d:fb"
private_key_path = "C:/Program Files/Git/root/.oci/oci_api_key.pem"
region           = "eu-amsterdam-1"
compartment_ocid = "ocid1.compartment.oc1..aaaaaaaav2idy5mde3kvox4l6j7v2b7nj2qdmyqgdhbuuzhpbhf74ibfetpq"


#Enter the subnet OCID which you want to deploy the bastion service
subnetid = "ocid1.subnet.oc1.eu-amsterdam-1.aaaaaaaaadprjx65ot35ina4cjagdzaitopynxzmdfsbv7czzdeho4ivkrna"

#Enter the port which you need to forward the traffic to the private instance/DB (private IP)
port = "1521"

#username which you want to create a Managed SSH (for Oracle Linux the username is "opc", for ubuntu OS username will be "ubuntu")
username = "opc"

#The instance variable is to provide the IP address if private instances which you want to create a Managed SSH session
#Please hash "#" out the entry if you don't want to creatte managed SSH session

instance = ["192.168.2.170", "192.168.2.230"]


#The privateip variable is to provide the IP address if private instances/db which you want to create a Port Forwarding session
#Please hash "#" out the entry if you don't want to creatte port forwarding session

privateip = ["192.168.2.170", "192.168.2.230"]
