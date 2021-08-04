# OCI-Bastion-Service
The Terraform code help you to create Hassle free Oracle Cloud Infrastructure (OCI) Bastion service. 

**1. Managed SSH**

You can create Managed SSH session to existing compute instances in your tenancy. (Make sure the bastion plugin is enabled for the instance)

**2. SSH Port Forwarding** 

You can able to create a port forwarding connection to existing compute or DB resources in the tenancy. 

## How to use code ?

### Method: 1. Deploy Using Oracle Resource Manager

1. Click [![Deploy to Oracle Cloud](https://oci-resourcemanager-plugin.plugins.oci.oraclecloud.com/latest/deploy-to-oracle-cloud.svg)](https://cloud.oracle.com/resourcemanager/stacks/create?region=home&zipUrl=https://github.com/balus7891/OCI-vpn-setup/releases/download/v1.1/OCI_IPSec_VPN_setup_Stack-v1.1.zip)

    If you aren't already signed in, when prompted, enter the tenancy and user credentials. Cancel changes

2. Review and accept the terms and conditions.

3. Select the region where you want to deploy the stack.

4. Follow the on-screen prompts and instructions to create the stack. Supply the required values

5. After creating the stack, click **Plan** button.

6. Wait for the job to be completed, and review the plan.

    To make any changes, return to the Stack Details page, click **Edit Stack**, and make the required changes. Then, run the **Plan** action again. (It's a best practice always plan and verify the action before **apply**)

7. If no further changes are necessary, return to the Stack Details page, click **Apply**. 



#### OCI Resource Manager Stack Output

Once the job finsihed sucessfully you will receive the **SSH Metadata** for the sessions created as an ouput. You can see the same from the logs as well as from the **Output** tab

### Method: 2. Deploy Terraform CLI

### STEP 1.

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
### STEP 2.

Clone the repo from GitHub.com by executing the command as follows 
```
git clone https://github.com/balus7891/OCI-Bastion-Service.git
```
### STEP 3. 
Navigate to the directory (OCI-Bastion-Service) and update the appropriate values in **terraform.tfvars** file. Update each field carefully with the instructions mentioned as comments.

If you don't want to create any **Managed SSH** session, remove the variable or comment out the variable **instance**.

Likewise you don't want to create any **SSH Port Forwarding** session, remove the variable or comment out the variable **privateip**.

All set !!! Now you are good to **RUN** the below.

**terraform init**

**terraform plan**

**terraform apply**

Refer the output for SSH-metadata to connect !

_To remove the service run the below_

**terraform destroy**


## Conclusion

###### The code help you easily create a managed as well as port forwarding session. You can create mutiple sessions at same same as well. 
###### As you all aware that the maximum lifetime of a session is 3 hours. After 3 hours the session got auto deleted and you are supposed to create another session to connect the private resources in the tenancy. it’s a time consuming activity when you create the same from the dashboard and need to perform the every 3 hours. 

###### To overcome the huddle situation, make use of the above piece of terraform code. You just need to run only the **terraform apply** command to get back all the sessions active again.  That is the beauty of terraform scripts. 

## I hope the script helps !!!
Balasubramannyam Sunil 
