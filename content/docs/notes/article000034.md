---
title: AWS Data migration services

time: 2023-12-19 21:00:00
description: >
  AWS Data migration services

authors:
    - Alexander Friesen
tags:
  - aws


---

## Intro

Here is a list of AWS data migration services:

## Description




| Feature | SMS | MGN |
|---|---|---|
| Type of workload | Servers, VMs | Applications |
| Replication method | Incremental | Full or incremental |
| Downtime | Can minimize downtime | Can migrate with minimal downtime |

**Here is a table summarizing the use cases for SMS and MGN:**

| Use case | SMS | MGN |
|---|---|---|
| Migrating physical servers | Yes | No |
| Migrating VMs | Yes | No |
| applications | No | Yes |


### **AWS Database Migration Service (AWS DMS) && AWS Schema Conversion Tool (SCT):** 

- it can **continuosly replicate DB data**, keeping source fully operational. E.g. to sync one DB with another.
  - With AWS Database Migration Service, you can continuously replicate your data with high availability and consolidate databases into a petabyte-scale data warehouse by streaming data to Amazon Redshift and Amazon S3.

AWS Database Migration Service (AWS DMS) is a fully managed service that helps you migrate your on-premises databases to the AWS Cloud. It supports a variety of database engines, includ

**AWS Schema Conversion Tool (SCT)** is a tool that can be used to convert the schema of an on-premises database to a compatible schema for an AWS database. This can be helpful if you need to migrate a database to a different database platform.




### **AWS Server Migration Service (SMS):** 

Replatforming service.

 - SMS discovers and replicates the server to be migrated.
 - SMS takes a **snapshot of the replicated server**.
 - SMS stores the snapshot in an **S3 bucket**.
 - SMS **creates an AMI** from the snapshot.
 - SMS tags the AMI with information about the source server.


AWS Server Migration Service (SMS) is a fully managed service that makes it easy to migrate on-premises **servers to AWS**. It automates the process of replicating your on-premises servers to Amazon EC2 instances in the cloud

Replatform and use capabilities such as **Amazon Elastic Block Store (Amazon EBS) snapshots**. <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html>

Or cloning an **EC2 instance to create an AMI**: <https://docs.aws.amazon.com/toolkit-for-visual-studio/latest/user-guide/tkv-create-ami-from-instance.html>

<https://docs.aws.amazon.com/prescriptive-guidance/latest/migration-replatforming-cots-applications/welcome.html>


### **AWS Application Migration Service (MGN):** 

AWS Application Migration Service (MGN) is a **highly automated lift-and-shift (rehost) solution**


AWS Application Migration Service is a tool that helps you migrate your **on-premises applications** to the AWS Cloud. 

  - Initialize AWS Application Migration Service.
  - Set up the staging area server configuration and reporting, including staging area resources. 
  - Install agents on source servers, and use continuous block-level data replication (compressed and encrypted).
  - Automate orchestration and system conversion to shorten the cutover window.


<https://docs.aws.amazon.com/prescriptive-guidance/latest/patterns/migrate-an-on-premises-vm-to-amazon-ec2-by-using-aws-application-migration-service.html?did=pg_card&trk=pg_card>


[![mgm0](https://docs.aws.amazon.com/images/prescriptive-guidance/latest/patterns/images/pattern-img/58c8bafd-9a6d-42d4-a5ce-08c4b9a286a3/images/f8396fad-7ee9-4f75-800f-e819f509e151.png)](https://docs.aws.amazon.com/prescriptive-guidance/latest/patterns/migrate-an-on-premises-vm-to-amazon-ec2-by-using-aws-application-migration-service.html?did=pg_card&trk=pg_card "MGM Demo")



[![mgm1](https://img.youtube.com/vi/tB0sAR3aCb4/0.jpg)](https://youtu.be/tB0sAR3aCb4?si=oSe3Vcjhax3s9cEe&t=248 "MGM Demo")

https://eu-central-1.console.aws.amazon.com/mgn/home?region=eu-central-1#/welcome

[![mgm2](https://hidekazu-konishi.com/images/aws_mgn_architecture_lifecycle_usage_notes_003.png)](https://hidekazu-konishi.com/entry/aws_mgn_architecture_lifecycle_usage_notes.html "MGM Demo2")



### **AWS AppFlow:** 

Amazon AppFlow is a SaaS data migration service for SIMPLE cases, that makes it easy to connect and move data between on-premises data sources and AWS services. AppFlow uses a secure, direct connection to your data sources.

Implements SaaS-data-pipelines from one popupar application to another.
See Demo <https://youtu.be/NF7rEo8CzpA?si=3Dc5litjLu8vKjcQ&t=863>

  * **Real-time data replication**
  * Scheduled data replication
  * ELT (Extract, Load, Transform)

![Alt text](https://s3.eu-central-1.amazonaws.com/alf-digital-wiki-pics/sharex/BSD2nOHPIz.png)

![Alt text](https://s3.eu-central-1.amazonaws.com/alf-digital-wiki-pics/sharex/azbNSJbZKJ.png)

### **AWS Snowball:** 

AWS Snowball is a petabyte-scale data transport service that allows you to securely ship petabytes of data to and from AWS using physical storage devices. Snowball is a good option for migrating large amounts of data from on-premises locations to AWS.

### **AWS Snowmobile:** 

AWS Snowmobile is a service that allows you to transport petabytes of data to and from AWS using 100 petabyte storage containers. Snowmobile is a good option for migrating very large amounts of data (e.g., tens of petabytes or more) from on-premises locations to AWS.

### **AWS DataSync:** 

AWS DataSync is a service that can be used to copy files between on-premises storage and AWS storage services, such as Amazon S3, Amazon FSx for Windows File Server, and Amazon FSx for Lustre. DataSync can be used to copy large amounts of data quickly and efficiently.


### **AWS Data Pipeline:** 

AWS Data Pipeline is a service that can be used to automate the ETL process. It can be used to schedule and monitor data flows that move data from one AWS service to another.


## Links

