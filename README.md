## Prerequisites

- IAM role is created and the `.pem` file is downloaded and stored in the same directory as the `tf` files.

## How to use
- Change directory into terraform-lb and initialize terraform

`cd terraform-lb`
`terraform init`

- Check out what is to be created by running

`terraform plan`

- Finally create the resource by

`terraform apply -auto-approve`

- After the resources are created, it will output the loadBalancer IP which can be used to access the servers.

## Thoughts to the following:
● While there is no need to create VPCs, subnets, etc. to support this infrastructure, how
would you organize your tool so that someone could specify those networking bits?
   - If a resource is not defined in the scripts it cannot be created by the script. Hence, 2 ways to include those,
      - Modifying the script and add the relevant resources
      - Create the resources manually then including them where necessary in the configuration
● The number of requests may exceed the capacity of this VM; how might you solve that?

   - we've used auto scalling groups which will increase the number of servers when the server is being overwhelmed with requests and also delete when traffic is low