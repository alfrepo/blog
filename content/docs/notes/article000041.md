---
title: AWS Storage Gateway and AWS Transfer
time: 2024-01-26 11:00:00
description: >
  AWS Storage Gateway and AWS Transfer

authors:
    - Alexander Friesen
tags:
  - aws

---

## Intro

AWS Storage Gateway 

AWS transfer Family

## Description


### AWS Storage Gateway 

Types:

* File Gateway
* Volume Based Gateway
  * using Gateway **STORED** Volumes
  * using Gateway **CACHED** Volumes
* Tape Based Gateway



#### File Gateway

* Purpose:
  * provides access to objects in S3 as files or file share mount points. It can be considered as a file system mount on S3
  
* UseCase:
  * cost-effective alternative to on-premises storage.

* How:
  * Software appliance, or gateway, is deployed into the on-premises environment.
  * Allow access via: **NFS, SMB**
  * Like a "share folder" that sits in AWS S3

* When to use:
  *  when **some network delay** accessing files is OK


![Vision](article0003/../article00041/filegateway.png)


#### Volume Based Gateway

Types:

*  Gateway STORED Volumes
*  Gateway CACHED Volumes

Summary:

*  Purpose:
  *   provides access to objects in S3 as files or file share mount points. It can be considered as a file system mount on S3
  
*  How:
  *   Allow access via: **ISCSI**
  *   iSCSI protocol **works at the block level**, it can generally **provide higher performance than NFS** by manipulating the remote disk directly



##### Volume Based Gateway Type: Gateway CACHED Volumes

*  UseCase: 
  *   store up to 1 PB. But only most popular files are available / cached locally in cloud

![Vision](article0003/../article00041/storagegw_cached.png)


##### Volume Based Gateway Type: Gateway STORED Volumes


*  UseCase:
  *  on prem - store up to 512 TiB on the Gateway. 
  *  and **asynchronously backs up point-in-time snapshots** (in the form of **EBS snapshots**) of the **data to S3** which provides **durable off-site backups**
	
![Vision](article0003/../article00041/storagegw_stored.png)





#### Tape Based Gateway

*  Purpose:
  *   secure transfer service that helps transfer files into and out of AWS storage services

*  UseCase:
  *   on prem - store up to 1 PB TAPE

*  How:
  *   Runs in cloud
  *   Offers **Virtual Tape**, **Virtual Tape Library (VTL)** interfaces
  *   Stores on **S3 Glacier** 

*  When to use:
  *   wanna migrate tape

![Vision](article0003/../article00041/tape.png)


### AWS Transfer Family

*  Purpose:
  *   secure transfer service that helps transfer files into and out of AWS storage services

*  How:
  *   Runs in cloud
  *   Opens up **SFTP**, **FTPS** access.
  *   Stores on **S3**

*  When to use:
  *   wanna upload via **FTPS**

![Data_AI_Data_Mesh](https://d2908q01vomqb2.cloudfront.net/e1822db470e60d090affd0956d743cb0e7cdf113/2020/06/22/How-File-Gateway-and-AWS-Transfer-Family-can-be-used-together-for-your-reporting-workflow.-1.png)



Example of File GW usage with Transfer Family.


## Links

- <https://aws.amazon.com/blogs/storage/centralize-data-access-using-aws-transfer-family-and-aws-storage-gateway/>
- <https://jayendrapatil.com/aws-transfer-family/>