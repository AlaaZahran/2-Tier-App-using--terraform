
# Project Title

Create a 2-Tier Application Using Terraform.




## Project Description
This project aims to create an ec2 instance in a public subnet and an rds instance in a private subnet in the same vpc and attach a security group to each instance.

The project divide to tow parts :

*  Project folder which includes: 
    * Main.tf
    * Provider.tf
    * Terraform.tfvars
    * Varaible.tf
*  Modules folder which includes 3 folder :
    * web-instance
       * main.tf
       * variable.tf
    * rd-instance
       * main.tf
       * variable.tf
       
    * network
       * main.tf
       * variable.tf
       * output
    
## Network Steps
1- create a vpc using GUI

2- Using data source to fetch vpc id

3- Create an internet gateway for the public subnet

4- Create two private subnets using foreach for the rds instance

5- Create a public subnet for the ec2 instance

6- Creating a routing table for the public subnet

7- Attaching routing table to the public subnet created in order to provide access to the internet.
## RDS Steps
1- Create an RDS instance with specs :

* Allocated_storage =10

* Identifier= "rdsterraform"

* storage_type= "gp2"

* engine= "MySQL"

* engine_version="8.0.27"

* instance_class= "db.t2.micro"

* db_name= "it"

2- Create an Aws DB subnet group that depends on two private subnets and attach them to it.

3- Create a Security Group for the rds instance that allows in the ingress traffic port 3306 and specified the CIDR block range to it.



## EC2 Instance Steps
1- Create an ec2 instance with specs:

* ami="ami-065793e81b1869261"

* instance_type="t2.micro"

2- Create a security group that allows HTTP, HTTPS, and SSH

3 - finally attach this security group to the ec2 instance
## Backend
Using s3 as a backend instead of using  a local backend 
## Terraform Module Source

1- Network module
   [Module](https://github.com/AlaaZahran/2-Tier-App-network-module.git)
2- Rds module
   [Module](https://github.com/AlaaZahran/2-Tier-App-rds-instance-module.git)
3- Web module
   [Module](https://github.com/AlaaZahran/2-Tier-App-web-instance-module.git)

[Module](https://github.com/AlaaZahran/2-Tier-App-module.git)


## Deployment

To deploy this project run:

* To download aws provider and project dependencies

```bash
  terraform init

```
* To check and test project before apply (dry run)
```bash
  terraform plan
```  
* finally To apply project 
```bash
  terraform applay
```


## Project Diagram

![project diagram](https://res.cloudinary.com/practicaldev/image/fetch/s--jpYNxJGI--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/i/gc4m221kunlarpjlzoen.png)
