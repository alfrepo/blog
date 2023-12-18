---
title: AWS Outpost

time: 2023-12-18 21:00:00
description: >
  AWS Outpost

authors:
    - Alexander Friesen
tags:
  - aws
  - outpost

---

## Intro

AWS Outposts rack is a fully managed service that provides a logical pool of cloud compute, storage, and networking capabilities. With Outposts racks, customers can use supported AWS managed services in their on-premises environments

![](https://docs.aws.amazon.com/images/outposts/latest/userguide/images/outposts-form-factors.png)

https://docs.aws.amazon.com/outposts/latest/userguide/how-outposts-works.html

## Description

![](https://docs.aws.amazon.com/images/whitepapers/latest/aws-outposts-high-availability-design/images/outpost-deployed-in-customer-data-center.png)

Overview

![](https://docs.aws.amazon.com/images/whitepapers/latest/aws-outposts-high-availability-design/images/dr-from-an-outpost-to-the-region.png)

Connection to cloud

![](https://docs.aws.amazon.com/images/AmazonS3/latest/userguide/images/s3-outposts-interface-endpoints.png)

Management of S3 from OutPost - happens  via PrivateLink (in cloud)

![](https://docs.aws.amazon.com/images/whitepapers/latest/aws-outposts-high-availability-design/images/s3-on-outposts-ha.png)

To access your Amazon S3 on Outposts bucket, you must create and configure an access point.

Access points are named network endpoints that are attached to buckets that you can use to perform Amazon S3 object operations, such as GetObject and PutObject.

## Service available on outpost

As of my last knowledge update in early 2022, AWS Outposts supports a subset of AWS services that can be deployed and run on-premises within your own data center or edge location. These services are designed to bring a consistent AWS experience to your local infrastructure and facilitate hybrid cloud deployments.

The services available on AWS Outposts include a range of core compute, storage, database, container, and analytics services, among others. Some of the key services supported on AWS Outposts are:

1. **Amazon EC2:** Provides resizable compute capacity in the form of virtual servers, allowing you to run a wide range of applications.

2. **Amazon EBS:** Offers block storage volumes that can be attached to EC2 instances, providing persistent storage.

3. **Amazon RDS:** Allows you to run managed relational databases like MySQL, PostgreSQL, SQL Server, and Oracle within your Outposts environment.

4. **Amazon S3:** Offers scalable object storage, allowing you to store and retrieve data using simple APIs.

5. **Amazon ECS and EKS:** Enables running containerized applications using either Amazon Elastic Container Service (ECS) or Amazon Elastic Kubernetes Service (EKS) on Outposts.

6. **Amazon EMR:** Provides a managed big data framework, allowing processing of large amounts of data using tools like Apache Spark and Hadoop.

7. **Amazon MSK:** Managed Streaming for Apache Kafka, allowing you to build and run applications that process streaming data.

8. **Amazon ElastiCache:** Offers fully managed in-memory caching services compatible with Redis or Memcached.

9. **AWS IoT Greengrass:** Extends AWS capabilities to edge devices, enabling local processing and communication with the cloud.

These services allow you to build and run various types of applications, databases, analytics workloads, and more, using the same AWS APIs, tools, and infrastructure on-premises with the AWS Outposts hardware. The availability of services may vary based on your region and the specific configurations of your Outposts deployment, so it's recommended to check the AWS documentation or the AWS Management Console for the most up-to-date information on available services in your region.

## Links

- what is outpost <https://docs.aws.amazon.com/outposts/latest/userguide/what-is-outposts.html>
- <https://docs.aws.amazon.com/whitepapers/latest/aws-outposts-high-availability-design/aws-outposts-high-availability-design.html>
- <https://docs.aws.amazon.com/whitepapers/latest/aws-outposts-high-availability-design/storage.html>
- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-outposts-privatelink-interface-endpoints.html>
