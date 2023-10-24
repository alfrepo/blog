---
title: Data Mesh terminology
time: 2023-10-06 20:00:00
description: > 
  Data Mesh terminology.
  How does "DataMesh" work?
  What is it made of?
  What is it made for?
  What are the data products?
authors:
    - Alexander Friesen
# og_image: media/scoop-update.png
tags:
  - data_mesh
  - data_products
---


## Intro

- How does "DataMesh" work?
- What is it made of?
- What is it made for?
- What are the data products?

![Vision](article0003/../article00007/data_medals.jpg)

## About "Data Mesh"

The overarching concept and architecture for decentralized, domain-oriented data management.

See a high level example of "McKesson" :

[![Data_AI_Data_Mesh](https://img.youtube.com/vi/q27Lc525Il0/0.jpg)](http://www.youtube.com/watch?v=q27Lc525Il0 "Data+AI Data Mesh")


### Pattern 1

![](https://s3.eu-central-1.amazonaws.com/alf-digital-wiki-pics/sharex/wTakmSgeFW.png)

- On demand access of source aligned data products from source data enabled
via microservices
- Functioning of API gateway as a mediation layer
- Cache is enabled on the microservices layer, for better performance of
frequently accessed results



### Pattern 2
![](https://s3.eu-central-1.amazonaws.com/alf-digital-wiki-pics/sharex/ksEOFkO3az.png)

#### Pattern #2A

- **On demand access** of analytical data products from source data enabled via **data virtualization**
- Data Products cataloged at the **virtual data layer**
- DV facilitates transaction through MMP execution engine, pulling the pieces it needs to it memory and executing the **joins**
- **Access authorization** is enforced at entity level
- **Consumption** enabled through **microservices** (REST APIs)

#### Pattern #2B
- **Access** of analytical data products on a **near real time** basis, wherein one or more of the data layers, is **persisted**
- **Event based sync** via **pub/sub (streaming source)**, **CDC (log replication)**, **API**
- Movement across layers via **structured streaming** based on **low-code/no-code framework**
- **Access routed** through **data federation layer** for a) **federating data products** b) **enable Role based access control**

#### Pattern 3
![](https://s3.eu-central-1.amazonaws.com/alf-digital-wiki-pics/sharex/oe0Dh6y4y7.png)

#### Pattern #3A
- **On demand access** of BI data products from source data or enriched enabled via **data virtualization**
- **Refresh** of semantic layer routed through **data virtualization layer** to **join federated data products** across nodes

#### Pattern #3В
- **Driven by the need** to **slice and dice** **large volume** of **transactional or aggregate data**, not available in the **semantic model layer**
- **Direct query mode** to the **gold layer**
- **Piss tour mode co thathor ation detals** from Bi to **data persistence layer**

## Data virtualization

In the example below data virtualization is used, to **handle the scalability issues** with data sources.

**Data virtualization**, in the context of Data Mesh, is a technology and architectural approach that allows organizations to access and manage **data** from diverse sources across a distributed **data infrastructure**. Data Mesh is a paradigm for solving the challenges of managing and scaling **data** in modern organizations, and **data virtualization** plays a crucial role in achieving the goals of Data Mesh.

In Data Mesh, the **data landscape** is distributed, with **data** owned and managed by different domain teams. **Data virtualization** acts as a layer that abstracts the complexity of **data sources** and provides a unified and consistent interface for accessing **data**. It allows **data consumers** to query, access, and analyze **data** without having to know the specifics of where the **data** is stored, how it's structured, or which technology stack is used.

Key aspects of **data virtualization** in the context of Data Mesh include:

1. **Data Abstraction**: **Data virtualization** abstracts the physical location and technical details of **data sources**. It presents **data** as logical entities or services, making it easier for **data consumers** to work with **data**.

2. **Federation**: **Data virtualization** can federate **data** from various sources, including **databases**, **data lakes**, **APIs**, and more. This enables **data consumers** to access **data** from multiple domains seamlessly.

3. **Data Governance**: It helps enforce **data governance** policies and access controls across the distributed **data landscape**. Data Mesh emphasizes the importance of **data ownership** and **governance** within each domain, and **data virtualization** can play a role in ensuring compliance.

4. **Data Quality and Transformation**: **Data virtualization** can perform **data quality checks** and **transformations** on the fly, ensuring that the **data** served to **data consumers** is reliable and fit for purpose.

5. **Query Optimization**: It can optimize **queries** and **data retrieval** to enhance performance and reduce **data transfer** across the network.

6. **Metadata Management**: **Metadata** about the **data sources**, **schema**, and lineage is a critical aspect of Data Mesh. **Data virtualization** can help manage and provide access to this **metadata**.


By using **data virtualization** within a **Data Mesh** framework, organizations can make their **data infrastructure** more scalable, flexible, and manageable. It simplifies **data access** and consumption, promotes **data ownership** within domains, and enables organizations to leverage **data** as a strategic asset while maintaining **data quality** and **governance**.


## Types of Models in "Data Mesh"

In the context of Data Mesh, several types of models and components exist to support various aspects of the data management and processing architecture. These models and components may include:

1. **Ingestion Models**: These models are responsible for collecting and ingesting data from various sources into the Data Mesh. They may include connectors, data pipelines, and data integration processes.

2. **Storage Models**: Data Mesh architectures often involve distributed data storage systems that can handle large volumes of data. These models are responsible for managing data storage, which may include data lakes, data warehouses, or other storage solutions.

3. **Processing Models**: In addition to analytical models, there may be other models that focus on data processing tasks such as data cleansing, data transformation, data enrichment, and real-time data processing. These models ensure that data is prepared and processed effectively before analysis.

4. **Access Models**: Access models define how different teams and users can access the data within the Data Mesh. This includes access controls, data cataloging, and APIs for data retrieval.

5. **Monitoring and Governance Models**: These models are responsible for monitoring the health of the data ecosystem, ensuring data quality, and enforcing data governance policies. They may include data quality checks, auditing, and compliance components.

6. **Metadata Models**: Metadata models help in cataloging and organizing the metadata associated with the data, making it easier for teams to discover, understand, and use the available data assets.

7. **Data Lineage Models**: Data lineage models track the journey of data as it flows through the Data Mesh, providing transparency into how data is sourced, transformed, and consumed. This is important for data governance and auditing.

8. **Security Models**: Security models focus on data security and access control, ensuring that sensitive data is protected and that the right people or teams have access to the appropriate data.

9. **Data Catalog Models**: These models provide a catalog of available data assets, making it easier for teams to discover and access the data they need for their analytical and operational purposes.

10. **Streaming Models**: For real-time data processing, streaming models handle data streams and events, allowing for near-real-time analysis and insights.

11. **Analytical Models**: Analytical models are designed to perform specific data analysis tasks, helping to extract valuable insights and knowledge from the data within the Data Mesh.

These models and components work together to create a robust and scalable Data Mesh architecture, encompassing data ingestion, storage, processing, access, monitoring, governance, metadata management, security, data lineage, data cataloging, streaming, and analytical capabilities.

### Analytical models

Analytical models in a Data Mesh can take various forms, but they are primarily focused on the analysis and processing of data. Here are a few key aspects of analytical models in the context of Data Mesh:

**Data Processing**: Analytical models are designed to perform specific data processing tasks, such as data transformation, data enrichment, feature engineering, or aggregations. They are typically tailored to the needs of a particular data domain.

**Domain-Specific**: Analytical models are often domain-specific, meaning they are created and managed by the individual data domain teams. These teams have in-depth knowledge of their specific data, business requirements, and analytical needs.

**Decentralized**: One of the core principles of Data Mesh is decentralization. Analytical models are created and maintained by the domain teams, reducing the centralized burden on a single data engineering or analytics team.

**Data Quality and Governance**: Analytical models are responsible for ensuring data quality, governance, and compliance within their respective domains. This includes monitoring data quality, implementing access controls, and adhering to data privacy regulations.

**Scalability**: Analytical models should be designed with scalability in mind to handle increasing data volumes and evolving analytical requirements.

**API-Driven**: To promote ease of use and integration with other components of the Data Mesh, analytical models often expose APIs that allow other teams and systems to interact with and access the data they process.

**Interoperability**: Analytical models need to be designed with interoperability in mind, making it possible for other domains to consume the processed data for their analytical needs.

Overall, analytical models within a Data Mesh architecture play a crucial role in enabling organizations to effectively manage and analyze their data in a decentralized, scalable, and domain-oriented manner. They are tailored to the specific needs of data domains and help foster a more agile and efficient data ecosystem.


## Data Products in "Data Mesh"

A **data product** is a type of product that is primarily focused on leveraging **data** to provide value or solve specific problems for users or organizations. These products are often developed by combining **data analysis**, **data processing**, and **data visualization** with **software** and **user interface design**. The key characteristic of a data product is its ability to deliver **actionable insights** or information derived from **data**, which can aid **decision-making** or provide new functionalities.

Here are some common examples of **data products**:

1. **Recommendation Engines**: These products use **data** about user preferences and behaviors to suggest products, services, or content that users are likely to be interested in. This is commonly seen in e-commerce websites, streaming platforms, and social media networks.

2. **Predictive Analytics Tools**: Data products in this category use **historical data** to predict **future events** or trends. For instance, predictive maintenance systems in manufacturing industries predict when equipment might fail based on **sensor data**.

3. **Business Intelligence Dashboards**: These products provide **data visualizations** and reports to help organizations track **key performance indicators (KPIs)** and make **data-driven decisions**. They are often used for **reporting**, **data analysis**, and **performance monitoring**.

4. **Data Monetization Platforms**: Data products in this space focus on creating **revenue streams** from **data assets**. This may include **selling data** to third parties, creating data-based applications, or offering **data analytics** as a service.

5. **Healthcare Analytics Platforms**: These products use **patient data**, **medical records**, and other healthcare-related data to improve **patient outcomes**, optimize **healthcare operations**, and **reduce costs**.

6. **IoT Data Platforms**: **Internet of Things (IoT) data products** process and analyze data from various **sensors** and devices to provide insights, automate processes, and optimize device performance.

7. **Fraud Detection Systems**: These data products use **data patterns** and **anomalies** to identify potential **fraudulent activities**, such as in credit card transactions or online security.

8. **Natural Language Processing (NLP) Tools**: **NLP data products** analyze and process **text data** to extract **meaning**, **sentiment**, or **entities**, and are used in applications like **chatbots**, **sentiment analysis**, and language translation.

In essence, a **data product** is any **software** or system that transforms **data** into **actionable insights**, knowledge, or functionalities, making **data** a valuable asset for users, organizations, or other systems. **Data products** are often used to improve **decision-making**, enhance user experiences, and create new **revenue opportunities** by leveraging the power of **data**.


## Data Products implementation in "Data Mesh"

Building a data product can be approached in divers ways, depending on your specific goals and the nature of the data you're working with. 

Here are several common methods to build a data product:

1. **ETL (Extract, Transform, Load) Processes**: Traditional ETL processes involve extracting data from source systems, transforming it to meet the requirements of the data product, and loading it into a target database or data warehouse. This approach is suitable for batch-oriented data products.

2. **Streaming Data Processing**: For real-time or near-real-time data products, streaming data processing frameworks like Apache Kafka, Apache Flink, or Apache Spark Streaming can be used to process and analyze data as it arrives.

3. **Machine Learning Models**: Data products can be built using machine learning models for tasks like prediction, recommendation, anomaly detection, and natural language processing. These models are trained on historical data and deployed to make predictions or automate tasks.

4. **Data APIs**: Create data products by exposing APIs that allow other systems or applications to access and consume your data. These APIs can serve data in various formats (e.g., RESTful APIs, GraphQL, SOAP) and are commonly used for integration.

5. **Data Visualization Tools**: Data products can be built using data visualization tools like Tableau, Power BI, or custom dashboarding solutions. These tools help turn data into visual insights and reports for end-users.

6. **No-Code/Low-Code Platforms**: No-code and low-code platforms allow users to build data products with minimal coding. They are useful for quick prototyping and automating workflows without extensive development.

7. **Data Warehouses**: Store and manage your data in a data warehouse and build data products on top of it. Modern data warehouses often include analytics and visualization capabilities.

8. **Data Integration Platforms**: Use data integration platforms like Apache NiFi, Talend, or Informatica to automate data movement, transformation, and integration.

9. **Natural Language Processing (NLP)**: NLP techniques can be used to build data products for tasks like sentiment analysis, chatbots, language translation, and text summarization.

10. **Graph Databases**: For data products that involve complex relationships, graph databases can be used to model and query data in a graph format, making it suitable for recommendation systems, social networks, and fraud detection.

11. **Blockchain and Distributed Ledger Technologies**: Blockchain can be used for data products that require secure, immutable, and distributed data storage, such as supply chain tracking or identity verification.

12. **IoT (Internet of Things) Data Processing**: For data products involving sensor data and IoT devices, IoT platforms and edge computing can be used to collect and analyze data at the source.

13. **API Aggregation**: Build data products by aggregating data from multiple APIs and sources to provide a consolidated view or service.

14. **Content Management Systems (CMS)**: For data products focused on content, such as blogs, news, or e-commerce, content management systems like WordPress and Shopify can be utilized.

15. **Custom Development**: Sometimes, building a custom data product from the ground up using programming languages and frameworks is the most suitable option, especially for unique or complex requirements.

16. **CDC (Change Data Capture)**: CDC involves capturing and leveraging changes made to a data source over time. It's useful for building data products that require real-time or near-real-time updates based on changes in the source data.

The choice of approach depends on factors such as the type of data, data volume, real-time requirements, the specific problem you're addressing, and the technical skills and resources available. Often, a combination of these methods may be used to create a comprehensive data product that meets the needs of your organization or users.


### 16. Zoom into CDC (Change Data Capture)

Especially useful technique for the connection of legacy data-sources without good APIs.

"Data products" can be built using "change data capture" (CDC) by capturing and leveraging the changes made to a data source over time. CDC is a technique that monitors and captures changes in a database or data system, such as inserts, updates, and deletes, and then records those changes in a log or a separate storage system. These captured changes can be used to create various data products and drive real-time analytics, reporting, and more. Here's how data products are built using CDC:

1. **Data Source Selection**: Choose the data source or database system that you want to monitor for changes. This source could be a relational database, data warehouse, NoSQL database, or any other data store that supports change data capture.

2. **CDC Implementation**: Implement CDC mechanisms or tools in the selected data source. These mechanisms may include database triggers, database logs, or specialized CDC software. The goal is to capture changes as they occur in the source data.

3. **Change Data Storage**: The captured changes are typically stored in a change data log or a separate data storage system. This storage could be a separate database, a distributed message queue, or a log file.

4. **Data Transformation**: Process the captured change data to transform it into a format suitable for your specific data product. This may involve structuring the data, filtering out irrelevant changes, or performing data enrichment.

5. **Real-time Data Products**: With the continuous stream of change data, you can build real-time data products. These products could include real-time dashboards, analytics, notifications, or data feeds that provide up-to-the-minute insights and information.

6. **Historical Data Analysis**: In addition to real-time applications, CDC can be used to build historical data products. By storing change data over time, you can perform historical trend analysis, track data lineage, and reconstruct historical data states.

7. **Data Synchronization**: Use the change data to keep different systems or data stores in sync. This is useful for scenarios where data needs to be shared or replicated across multiple databases or data warehouses.

8. **Data Integration**: Combine the change data with other data sources to create consolidated views or data products that provide a holistic view of your data landscape.

9. **Data Warehousing**: Populate a data warehouse with the change data, which can be used for data warehousing, business intelligence, and reporting purposes.

10. **Data Pipeline Automation**: Implement automated data pipelines that process change data, ensuring that data products are updated in real-time or at scheduled intervals.

CDC is particularly valuable in scenarios where data needs to be continuously updated, and real-time insights or integration with other systems are essential. It helps in building data products that reflect the most current state of the data, making it a valuable tool in modern data architecture and analytics.



### Data quality levels: Bronze, Silver, Gold

In the context of the **Data Mesh** approach, data quality is often categorized into three tiers: **Bronze**, **Silver**, and **Gold**. 

These tiers represent different levels of data quality and are derived from one another through various processes and transformations. 

In summary, the **Data Mesh** concept of bronze, silver, and gold data quality tiers emphasizes the need to manage and improve data quality as part of the overall data architecture. It recognizes that not all data needs to be at the highest quality level and that it's essential to focus efforts on the most critical data assets while maintaining flexibility and scalability in managing large and diverse datasets.

Here's an explanation of each tier and how they are interconnected:

1. **Bronze Data**:
   - **Bronze data** is the raw, unprocessed data as it is ingested from various sources. It is typically characterized by its **volume**, **variety**, and **velocity**, representing a wide range of data types, formats, and sources.
   - **Data quality** at the bronze level is often low, with issues like missing values, duplication, inconsistencies, and errors. It is not immediately suitable for making important business decisions.

2. **Silver Data**:
   - **Silver data** is an intermediate stage of data refinement and quality improvement. It involves **data cleaning**, **standardization**, and **transformation** to address issues encountered in the bronze data.
   - The **data quality** at the silver level is significantly improved. Data is cleansed, validated, and structured, making it more suitable for general analysis and reporting.
   - **Metadata** is also added at this stage to provide context and documentation about the data.

3. **Gold Data**:
   - **Gold data** represents the highest level of data quality within the Data Mesh framework. It is achieved by further **data enrichment**, advanced analytics, and rigorous validation processes.
   - At this level, data is not only clean and well-structured but also highly valuable for critical decision-making. It is often used for **machine learning**, **AI**, and other advanced analytics applications.
   - **Data lineage** and **data governance** play a crucial role in ensuring that gold data is traceable, trustworthy, and well-documented.

The transition from bronze to silver to gold data involves several **data engineering** and **data governance** practices, including data cleaning, transformation, validation, and documentation. This tiered approach allows organizations to prioritize and allocate resources effectively to improve data quality gradually.




## Links


- ISO 25000 Software and Data Quality Standard. iso25000.com, 2022. <https://iso25000.com/index.php/en/iso-25000-standards/iso-25010>
- The Linux Foundation Projects: "Delta Lake". Delta Lake, a series of LF Projects, LLC,  2023. <https://delta.io/>
- Mazen Ali and Shiladitya Mandal: "Export and analyze Amazon DynamoDB data in an Amazon S3 data lake in Apache Parquet format". AWS Database Blog, 17 MAR 2021. <https://aws.amazon.com/de/blogs/database/export-and-analyze-amazon-dynamodb-data-in-an-amazon-s3-data-lake-in-apache-parquet-format/#:~:text=Export%20and%20analyze%20Amazon%20DynamoDB%20data%20in%20an,8%20Clean%20up%20your%20resources%20...%20Weitere%20Elemente>

