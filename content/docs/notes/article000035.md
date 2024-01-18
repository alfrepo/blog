---
title: AWS Analytics services

time: 2023-12-20 21:00:00
description: >
  AWS Analytics services

authors:
    - Alexander Friesen
tags:
  - aws
  - analytics


---

## Intro

AWS Analytics services 

[![Analytics](https://img.youtube.com/vi/A6DG_Afe07I/0.jpg)](https://www.youtube.com/watch?v=A6DG_Afe07I "Analytics overview")


## Description
AWS offers a wide range of analytics services, each designed for specific use cases. Here's a brief comparison of some of them:


![Alt text](https://d1.awsstatic.com/serverless-data-options-analytics.50be4d137df0a32aca3440e6e483642f1ad167b6.JPG)


| AWS Service | Optimized For | Description |
| --- | --- | --- |
| **Amazon Athena** | Interactive analytics | Allows users to analyze data in Amazon S3 using standard SQL. |
| **Amazon Redshift** | Data warehousing | A fully managed, petabyte-scale data warehouse service in the cloud. |
| **Amazon Managed Service for Apache Flink** | Real-time analytics | Fully managed service that makes it easy to build and run applications using Apache Flink. |
| **Amazon OpenSearch Service** | Operational analytics | Makes it easy to deploy, secure, and operate OpenSearch clusters at scale. |
| **Amazon QuickSight** | Dashboards and visualizations | A fast, cloud-powered business intelligence service that makes it easy to deliver insights to everyone in your organization. |
| **Amazon Glue DataBrew** | Visual data preparation | A visual data preparation tool that makes it easy to clean and normalize data for analytics and machine learning. |
| **Amazon Managed Streaming for Apache Kafka (Amazon MSK)** | Real-time data movement | A fully managed service that makes it easy to build and run applications that use Apache Kafka to process streaming data. |
| **Amazon Kinesis Data Streams** | **Real-time** data movement | A massively scalable and durable real-time data streaming service. |
| **Amazon Kinesis Data Firehose** | **NEAR-Real-time** data movement | The easiest way to reliably load streaming data into data lakes, data stores, and analytics services. |
| **Amazon Kinesis Data Analytics** | An **on-demand data analytics service** that allows you to process and analyze streaming data in real time. It provides a serverless experience, so you don't have to provision or manage resources. | **Real-time data processing, real-time analytics, IoT data analysis, fraud detection** |
| **Amazon Kinesis Video Streams** | Real-time data movement | Securely streams video from connected devices to AWS for analytics, machine learning (ML), and other processing. |
| **Amazon Kinesis Data Streams** | A **fully managed service** for real-time data ingestion and processing. It's designed to handle high-volume, low-latency data streams from thousands of sources. | **Real-time data ingestion, data processing, data streaming** |
| **AWS Glue** | Big data processing | A **fully managed extract**, transform, and load (ETL) service that makes it easy to prepare and load your data for analytics. <https://www.youtube.com/watch?v=cDDPg_XxPqc&t=2079s> |
| **Amazon EMR** | Big data processing | Like Glue, but more complex, open-source. Need more flexibility and control over their data processing environment. Provides a managed Hadoop framework to process vast amounts of data across dynamically scalable Amazon EC2 instances. |
| **AWS Data Exchange** | Data sharing | A data-market. |
| **AWS Data Pipeline** | A **fully managed data orchestration service** that simplifies the process of building, scheduling, and monitoring data pipelines. It eliminates the need to manually provision, manage, and scale resources for data movement and transformation. | **Data integration, data warehousing, data lake creation, data quality checks, data migration** |
| **AWS Lake Formation** | A **fully managed service** that makes it easy to set up and manage secure data lakes in Amazon S3. It provides centralized governance and management capabilities for your data lake, including access control, data quality, and data lineage. | **Data lake management, data governance, data quality** |




See <https://aws.amazon.com/getting-started/decision-guides/analytics-on-aws-how-to-choose/?nc1=h_ls>


Each service is designed with specific use cases in mind, so the best one for you would depend on your specific needs¹². AWS also provides a [decision guide](https://aws.amazon.com/getting-started/decision-guides/analytics-on-aws-how-to-choose/) to help determine which AWS analytics services are the best fit for your organization¹.





https://aws.amazon.com/getting-started/decision-guides/analytics-on-aws-how-to-choose/?nc1=h_ls







## AWS Lake Formation:


AWS Lake Formation can be used to build, secure, and manage data lakes. It helps in centralized access management for data in data lakes.


![Alt text](https://s3.eu-central-1.amazonaws.com/alf-digital-wiki-pics/sharex/WalM6RHDCZ.png)
Built on top of GLue to add permissions



### Coarse graned authorization: IAM

Important to note that using Lake Formation security model does not mean that we do not need to use IAM.
The lake formation permissions model actually works in conjunction with IAM.
We use IAM to still grant the coarse-grain permissions to access the catalog, but we use Lake formation to provide all of the fine-grained permissions on the databases tables and columns.

### Fine graned authorization: tags and named resources

In AWS Lake Formation, the units that are shareable via **LF-tags** or named resources are **Data Catalog resources**, which include 

 - **databases**, 
 - **tables in database**,  
  - **columns in table**. 



The following **two options** are available to share the resources in the data lakes with other accounts.

- **LF-Tags**: To use the Lake Formation tag-based access control (LF-TBAC) method to secure Data Catalog resources, you create LF-Tags, assign them to resources, and grant LF-Tag permissions to principals¹. Only a data lake administrator or a principal with LF-Tag creator permissions can create LF-Tags.

- **Named Resources**: The Lake Formation named resource method is an authorization strategy that defines permissions for resources². Data lake administrators can assign and revoke permissions on Lake Formation resources².

Both methods allow for **fine-grained access control** and secure sharing of data within a data lake.

![Alt text](https://aws.github.io/aws-lakeformation-best-practices/lf-tags/images/lf-tags-vs-named-resources-example.png)

With tags one has less management effort of permissions.
Permissions are attached to tags.

![Alt text](https://aws.github.io/aws-lakeformation-best-practices/lf-tags/images/lf-tags-example.png)


see

- https://aws.github.io/aws-lakeformation-best-practices/lf-tags/basics/
- Managing LF-Tags for metadata access control - AWS Lake Formation. <https://docs.aws.amazon.com/lake-formation/latest/dg/managing-tags.html>
- Sharing a data lake using Lake Formation tag-based access control and <https://docs.aws.amazon.com/lake-formation/latest/dg/share-dl-tbac-tutorial.html>



#### 1 LF-TBAC.  Lake Formation - tag based access control

1.  Lake Formation **tag-based** access control (**LF-TBAC**): This defines lake formation permission using attributes. In lake formation, tags are called LF-tags which grant permission to access databases with external principals, accounts, and AWS Organization. This is a recommended option for **sharing databases** with external accounts.

#### 2 Named resources

2.  Lake Formation **named resources**:  This grants Lake Formation permissions with a grant option on **Data Catalog tables** and databases to **external AWS accounts, IAM principals, organizations**, or organizational units.

### Sharing Lake Formation catalog with AWS services

**A resource link** is a **data catalog object** which is linked to a local or shared database. 


Creating a resource link **allows integrating with AWS services in other accounts** such as **Amazon Athena or Amazon Redshift Spectrum** to run **queries on the shared database**. 

These AWS services will NOT be able to access directly across cross accounts but using resource links, services can run queries on shared databases in **other accounts**.


### Summary 
| Option | Use case |
|---|---|
| Named resources | Create easily identifiable and reusable references to Data Catalog entities. |
| LF-TBAC | Grant cross-account access to Data Catalog entities. |
| Resource links | Create references to Data Catalog entities in other services. |

For more information on cross account permissions with AWS Lake Formation, refer to the following URLs,

*   [https://docs.aws.amazon.com/lake-formation/latest/dg/cross-account-permissions.html](https://docs.aws.amazon.com/lake-formation/latest/dg/cross-account-permissions.html)
*   [https://docs.aws.amazon.com/lake-formation/latest/dg/resource-links-about.html](https://docs.aws.amazon.com/lake-formation/latest/dg/resource-links-about.html)



## Links

- (1) Decision Guide for Analytics Services on AWS. https://aws.amazon.com/getting-started/decision-guides/analytics-on-aws-how-to-choose/.
- (2) Data Lakes and Analytics on AWS - Amazon Web Services. https://aws.amazon.com/big-data/datalakes-and-analytics/.
- (3) Decision Guide for Analytics Services on AWS. https://aws.amazon.com/getting-started/decision-guides/analytics-on-aws-how-to-choose/.
- (4) AWS, Azure and GCP Service Comparison for Data Science & AI. https://www.datacamp.com/cheat-sheet/aws-azure-and-gcp-service-comparison-for-data-science-and-ai.
- (5) AWS Data Analytics: Choosing the Best Option for You - NetApp. https://bluexp.netapp.com/blog/aws-cvo-blg-aws-data-analytics-choosing-the-best-option-for-you.
- (6) Compare AWS Trusted Advisor vs. Azure Analysis Services | G2. https://www.g2.com/compare/aws-trusted-advisor-vs-azure-analysis-services.
- Data lake with Cloud Formation - https://medium.com/@sukul.teradata/data-lakes-and-data-integration-with-aws-lake-formation-6bf39416990b
- https://aws.github.io/aws-lakeformation-best-practices/lf-tags/basics/
- Managing LF-Tags for metadata access control - AWS Lake Formation. <https://docs.aws.amazon.com/lake-formation/latest/dg/managing-tags.html>
- Sharing a data lake using Lake Formation tag-based access control and <https://docs.aws.amazon.com/lake-formation/latest/dg/share-dl-tbac-tutorial.html>
- https://aws.amazon.com/getting-started/decision-guides/analytics-on-aws-how-to-choose/
- https://aws.amazon.com/getting-started/decision-guides/analytics-on-aws-how-to-choose/?nc1=h_ls
