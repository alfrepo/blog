---
title: AWS provision accounts via organizations
time: 2023-11-30 23:00:00
description: >
  AWS 
authors:
    - Alexander Friesen
tags:
  - AWS provision accounts via organizations
---

## Intro

How to provision AWS accounts via Organizations.

## First via the Console, to understand the pieces


### 1. Login as Root User to "Management account > Organizations"

 - In management Account
 - As ``Root User`` 
 - login to organizations <https://us-east-1.console.aws.amazon.com/organizations/>
 - create an Account e.g. `` Sandbox`` 

![](./article00022/organizations.png)


And now.

Here is the gap, how to access teh provisioned account?


### 2. Enable Secrive Control Policies - SCP

- In management Account
- As ``Root User`` 
- Go to SCP <https://us-east-1.console.aws.amazon.com/organizations/v2/home/policies/service-control-policy?region=us-east-1>
- enable SCP 

![](./article00022/SCP.png)


### 3. Create a permission set, group, user

- In "IAM Identity Center" <https://eu-west-1.console.aws.amazon.com/singlesignon/home?region=eu-west-1>
- create permission set. I am reusing the "Predefined permission set" ''AdministratorAccess''

![](./article00022/iamidentitycenter.png)

- create user, group <https://eu-west-1.console.aws.amazon.com/singlesignon/home?region=eu-west-1>

![](./article00022/user.png)

![](./article00022/group.png)


### 4. Assign users and groups to organization accounts

- In "IAM Identity Center > AWS accounts" <https://eu-west-1.console.aws.amazon.com/singlesignon/home?region=eu-west-1>
- Assign users and groups to organization accounts

![](./article00022/org_assign_scp.png)

![](./article00022/org_permission_set.png)

![](./article00022/org_users.png)

![](./article00022/org_permission_set_provisioned.png)

Then the user/role/its permission sets associated are propagated into the associated accounts and you can login.

### 5. SSO into the provisioned account

- Via "AWS access portal URL" link in "IAM Identity Center" <https://eu-west-1.console.aws.amazon.com/singlesignon/home?region=eu-west-1>
- in my case "https://**********1.awsapps.com/start"
- you can open the "AWS access portal URL" from where you can SSO into your accounts, to which you enrolled the user. (dont forget to activate MFA for the user)

![](./article00022/iamidentitycenter-login.png)


And this is how the SSO portal looks like, allowing you to choose among accounts and roles, which you provisioned earlier into the accounts.

On my picture there is only one master account, but there would be all accounts in your organization.

![](./article00022/iamidentitycenter-sso.png)


## Programmatically provision accounts

One can use the Terraform module [AWS Control Tower Account Factory for Terraform (AFT)](https://docs.aws.amazon.com/controltower/latest/userguide/taf-account-provisioning.html)

- Read about AFT in this article: <https://aws.amazon.com/de/blogs/aws/new-aws-control-tower-account-factory-for-terraform/>
- Here is a tutorial about AFT usage <https://developer.hashicorp.com/terraform/tutorials/aws/aws-control-tower-aft>


![](./article00022/account_factory_terraform_module.png)


## Links

- 
- <https://aws.amazon.com/de/blogs/mt/deploy-and-customize-aws-accounts-using-account-factory-for-terraform-in-aws-control-tower/>
