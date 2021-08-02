

#Necessary fieldsrequired for connecting to the target OCI tenancy
ssh_public_key   = "ssh-rsa AAAAB3NzaC1yc2EAAAABJQ.............HNNLzqU8lCX6FCOYCYBj+jqazL7vCEgxNP9UYQZO..........zPKdHzOqbYjuq3WKAUPWKmBAeFDNprFxK3ReahngPqpKAN2s0f2pM9dM6qlqgVK2l2iaXe3acbv4sxFz8ljXTtSZUQQm/YAAtPimwgQ/Plhn/Cp2AbLUaXWM7K6BZeJ8mWQXcDPFAJYefTl6IUEP41+HwG5z0EE/5vdrWZHMv1HdHuEoeTVHk+orBUm1nWV2fpNqq4S7Dk9HYgK18h3+L9pzwGPoQ== Bala_Sunil_SSHkey"
tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaaxn3r3dh.............r4wzlahs3u76c4enhckxhy4kpaa"
user_ocid        = "ocid1.user.oc1..aaaaaaaaxbo27v..........dil44br42ymwowq"
fingerprint      = "87:18:64:9a:45:3c:b1:07:02:25:5d:3f:53:d8:9d:fb"
private_key_path = "C:/Program Files/Git/root/.oci/oci_api_key.pem"   #Provide the path of api private key (This is windows format)
region           = "eu-amsterdam-1"
compartment_ocid = "ocid1.compartment.oc1..aaaaaaaav2idy.......ibfetpq"


#Enter the subnet OCID which you want to deploy the bastion service
subnetid = "ocid1.subnet.oc1.eu-amsterdam-1.aaaaaaaaadprjx65ot35in................ivkrna"

#Enter the port which you need to forward the traffic to the private instance/DB (private IP)
port = "1521"

prefix = "my" #If you need any particilar prefix, please fill the variable prefix. It will get added with the display name

#username which you want to create a Managed SSH (for Oracle Linux the username is "opc", for ubuntu OS username will be "ubuntu")
username = "opc"

#The instance variable is to provide the IP address if private instances which you want to create a Managed SSH session
#Please hash "#" out the entry if you don't want to creatte managed SSH session

instance = ["192.168.2.170", "192.168.2.230"]


#The privateip variable is to provide the IP address if private instances/db which you want to create a Port Forwarding session
#Please hash "#" out the entry if you don't want to creatte port forwarding session

privateip = ["192.168.2.170", "192.168.2.230"]

###above are some of the sample IP values for Instance variable and privateip variable
