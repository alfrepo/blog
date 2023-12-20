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

### **AWS Database Migration Service (DMS):** 

AWS Database Migration Service (DMS) is a fully managed service that can be used to migrate databases from on-premises to AWS. It can be used to migrate a variety of databases, including Oracle, SQL Server, MySQL, and PostgreSQL.

### **AWS Glue:** 

AWS Glue is a fully managed ETL service that simplifies the data ingestion, transformation, and loading process. It can be used to move data from a variety of sources, including databases, file systems, and SaaS applications, to Amazon S3, Amazon Redshift, or other AWS services. Glue provides several features that make it easy to use, including:
    * A visual interface for creating and monitoring data flows
    * A library of pre-built connectors for popular data sources
    * A flexible schema registry for managing data formats
    * A built-in ETL engine for performing data transformations
    * Integrated support for Amazon S3, Amazon Redshift, and other AWS services
    * Glue has an AppFlow connector

Demo <https://www.youtube.com/watch?v=cDDPg_XxPqc&t=2079s>

* **AWS AppFlow:** Amazon AppFlow is a SaaS data migration service for SIMPLE cases, that makes it easy to connect and move data between on-premises data sources and AWS services. AppFlow uses a secure, direct connection to your data sources.

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

### **AWS Schema Conversion Tool (SCT):** 

AWS Schema Conversion Tool (SCT) is a tool that can be used to convert the schema of an on-premises database to a compatible schema for an AWS database. This can be helpful if you need to migrate a database to a different database platform.

### **AWS Data Pipeline:** 

AWS Data Pipeline is a service that can be used to automate theETL process. It can be used to schedule and monitor data flows that move data from one AWS service to another.


## Links

