# OCI-Bastion-Service
The Terraform code help you to create Hussle free Oracle Cloud Infrastructure (OCI) Bastion service

1. Managed SSH

You can create Managed SSH session to existing Compute instances in your tenancy. (Make sure the bastion plugin is enabled for the instance)

2. SSH Port Forwarding 

You can able to create a port forwarding connection to existing compute or DB resources in the tenancy. 

## How to use code ?

### STEP 1.

Clone the repo from GitHub.com by executing the command as follows 

### STEP 2.

Make sure Terraform installed in your local machine. verify using below command. 

```
Linux/Mac output

$ terraform --version

Terraform v0.12.16

Your version of Terraform is out of date! The latest version
is 0.12.17. You can update by downloading from https://www.terraform.io/downloads.html
------------------------------------------------------------------------------------------

Windows output

> terraform.exe -v
Terraform v0.15.3
on windows_amd64

Your version of Terraform is out of date! The latest version
is 1.0.3. You can update by downloading from https://www.terraform.io/downloads.html

```
