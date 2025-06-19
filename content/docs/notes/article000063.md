---
title: Data Protection Regulation
time: 2025-06-19 11:00:00
description: >
   Data Protection Regulation

authors:
    - Alexander Friesen
tags:
  - GDPR
  - General Data Protection Regulation
  - DSGVO
  - Datenschutz-Grundverordnung
  - DSG
  - Datenschutzgesetz
  - revDSG
  - revidierte Schweizer Datenschutzgesetz
  - DORA
  - 



---

## Intro
Understanding the data protection laws


## EU


#### GDPR - (Digital Operational Resilience Act)

Applies to everyone processing EU/EEA data: Even if a business is not based in the EU, if it offers goods or services to, or monitors the behavior of, individuals in the EU/EEA, the GDPR applies.
Definition of Personal Data: Broadly defines personal data as any information that can directly or indirectly identify a living person (e.g., name, address, IP address, online identifiers, health data).
Core Principles (Lawfulness, Fairness, Transparency):

 - **Lawfulness**: Data processing must have a legitimate basis (e.g., consent, contract necessity, legal obligation, vital interests, public interest, legitimate interest).
 - **Fairness**: Data must be processed in a way that respects the individual's rights.
 - **Transparency**: Individuals must be informed about how their data is being used in a clear and understandable manner.


#### DORA - (Digital Operational Resilience Act)
The Digital Operational Resilience Act (DORA) is an European Union regulation designed to strengthen the digital operational resilience of the financial sector. It entered into force on January 16, 2023, and will apply as of January 17, 2025.


Key aspects of DORA:

Sector-Specific: Unlike the broad data protection scope of GDPR, DORA is specifically aimed at the financial sector, including banks, insurance companies, investment firms, payment institutions, electronic money institutions, crypto-asset service providers, and their critical ICT third-party service providers (like cloud providers).

- Focus on Resilience: DORA's primary goal is to ensure that financial entities can withstand, respond to, and recover from ICT (Information and Communication Technology) disruptions, such as cyberattacks, system failures, and other operational incidents.

- the first  **list level can contain frmating** <br>
  and new lines <br>
  and <br>
  - can 
  - have a second layer of the list

- **Five Pillars**: It establishes uniform requirements across five key areas:
  - **ICT Risk Management**: Comprehensive framework for managing ICT risks.
ICT-related Incident Management, Classification, and Reporting: Procedures for detecting, managing, and reporting major ICT-related incidents to competent authorities.
  - **Digital Operational Resilience Testing**: Regular testing of ICT systems, including advanced threat-led penetration testing for larger entities.
  - **ICT Third-Party Risk Management**: Managing risks associated with reliance on third-party ICT service providers, including contractual provisions and oversight.
  - **Information Sharing**: Framework for sharing information and intelligence on cyber threats and vulnerabilities.
  - Harmonization: DORA aims to harmonize existing national rules on operational resilience within the EU financial sector, reducing fragmentation and ensuring a consistent approach.
  - Direct Applicability: As an EU Regulation, DORA is directly applicable in all EU member states from its effective date, without needing national transposition.


## Germany

For businesses in Germany, the following regulations are relevant:

 - GDPR (General Data Protection Regulation)
 - DSGVO (Datenschutz-Grundverordnung)
Both terms refer to the same law, namely Regulation (EU) 2016/679 of the European Parliament and of the Council of 27 April 2016 on the protection of natural persons with regard to the processing of personal data and on the free movement of such data, and repealing Directive 95/46/EC (General Data Protection Regulation).


The "DSGVO" (Datenschutz-Grundverordnung) is simply the German abbreviation for the **GDPR (General Data Protection Regulation)**. Therefore, the core principles of the DSGVO are exactly the same as those of the GDPR.

As outlined in Article 5 of the GDPR, these seven principles are:

1.  **Lawfulness, Fairness, and Transparency:**
    * **Lawfulness:** Processing must have a valid legal basis.
    * **Fairness:** Processing must be done in a way that is fair to the individual.
    * **Transparency:** Individuals must be clearly informed about how their data is processed.

2.  **Purpose Limitation:**
    * Data must be collected for **specified, explicit, and legitimate purposes** and not further processed in a manner incompatible with those purposes.

3.  **Data Minimization:**
    * Data collected must be **adequate, relevant, and limited to what is necessary** for the processing purpose.

4.  **Accuracy:**
    * Personal data must be **accurate and, where necessary, kept up to date**. Inaccurate data must be corrected or erased without delay.

5.  **Storage Limitation:**
    * Data must be kept in a form that permits identification of data subjects for **no longer than is necessary** for the purposes for which it's processed.

6.  **Integrity and Confidentiality (Security):**
    * Data must be processed in a manner that ensures **appropriate security**, including protection against unauthorized or unlawful processing and against accidental loss, destruction, or damage. This requires technical and organizational measures.

7.  **Accountability:**
    * The **data controller** is responsible for, and must be able to **demonstrate compliance** with, all the other principles.



## USA

CPRA (California Privacy Rights Act)
The California Privacy Rights Act (CPRA) is a landmark data privacy law in the United States, specifically for California residents. It came into full effect on January 1, 2023, with enforcement beginning in February 2024.

CPRA vs. GDPR: While the CPRA is often called the "GDPR of California" due to its comprehensive nature, there are key differences:

**Geographical Scope**: GDPR applies to the EU/EEA, while CPRA is specific to California.
Legal Basis for Processing: GDPR generally requires a legal basis (like consent or legitimate interest) for all data processing. CPRA is more focused on giving consumers the right to opt-out of certain uses (like sale/sharing) after data is collected, though explicit consent is needed for certain sensitive data or for minors.

**Penalties**: GDPR has higher potential fines (up to €20 million or 4% of global annual turnover), whereas CPRA fines are generally lower and target violations involving individuals.



## As a "Software Hardware Data Integrator" 

In most scenarios, as a software and hardware integrator, you will likely be a **Data Processor**. 

Your client, who is commissioning the integration to achieve their business goals (e.g., improve customer service, optimize operations), will typically be the Data Controller.



#### Data Controller vs. Data Processor:

Data Controller: Determines the purposes and means of processing personal data. They decide why the data is being collected and how it will be used. They have the primary responsibility for GDPR compliance.

Data Processor: Processes personal data on behalf of the data controller, following their instructions. They do not determine the "why" or "how" of the processing.


## As a "Software Hardware Data Provider" 
When providing Software and Hardware for On Prem installation.


Key challenge in your scenario is the "no ongoing access" part. 

While this limits your direct handling of the data post-installation, your product itself and the initial installation/configuration have a profound impact on your client's (the Data Controller's) ability to comply with GDPR.

* **You are a Data Processor:** For the vast majority of cases where your software/hardware processes personal data on behalf of your client, you are a Data Processor. Your client is the Data Controller.

* **Data Processing Agreement (DPA) is Mandatory:** You *must* have a robust DPA in place with your client. This is the cornerstone of your GDPR compliance. Even if you don't have ongoing access, the DPA defines your obligations regarding the initial setup, the capabilities of your product, and how you would assist in certain scenarios (e.g., updates, bug fixes that might impact data).

    * The DPA must outline the **nature, purpose, duration, and scope of processing**, the **types of personal data**, categories of **data subjects**, and the **obligations and rights of the controller**.
    * Crucially, it must stipulate that you only process data **on the documented instructions of the controller**.
    * It should also cover your responsibilities regarding **security, data breaches, assistance with data subject rights, and sub-processing**.



**2. "Privacy by Design" and "Privacy by Default" (Article 25):**

This is perhaps your most significant direct responsibility under GDPR, especially given your limited ongoing access. You are designing and providing the tools that will handle personal data.

* **Build Privacy In:** Your software and hardware systems should be designed from the ground up with data protection principles in mind. This means:
    * **Data Minimization:** Does your software inherently collect or allow the client to configure it to collect only the *minimum necessary* personal data for its intended purpose?
    * **Purpose Limitation:** Is it easy for your client to define and enforce specific purposes for data collection within the system?
    * **Security Features:** Does your product offer robust security features (e.g., encryption for data at rest and in transit, strong access controls, logging capabilities, audit trails, secure deletion functionalities) that the client can easily implement and manage?
    * **User Rights Enablement:** Does the software provide tools or functionalities that enable the client to easily respond to data subject requests (e.g., export data for access requests, modify/delete data for rectification/erasure requests)?
    * **Configuration for Privacy:** Does your system allow for privacy-friendly default settings (e.g., logging off by default unless configured, minimal data collection as a standard setting)?
* **Documentation:** Provide comprehensive documentation that guides your clients on how to configure and use your systems in a GDPR-compliant manner. This includes detailed instructions on activating security features, setting retention policies, managing access, and addressing data subject rights.

**3. Technical and Organizational Measures (TOMs - Article 32):**

While your client is responsible for their overall security posture on-premises, your product is a critical component of that.

* **Security of Your Deliverables:** Ensure that the software and hardware you deliver are inherently secure. This means:
    * **Secure Coding Practices:** Your software development process should adhere to secure coding standards to prevent vulnerabilities.
    * **Vulnerability Management:** You should have a process for identifying and patching security vulnerabilities in your products. This includes providing timely updates and patches to your clients.
    * **Hardening Guides:** Provide guides on how to "harden" the system post-installation (e.g., changing default passwords, restricting network access, configuring firewalls).
    * **Secure Installation Procedures:** Ensure your installation process itself is secure and that no unnecessary backdoors or default credentials remain.
* **Supporting Client's Security:** Even without direct access, your product's capabilities contribute to the client's security. For instance, if your software generates logs relevant for security monitoring, make sure those logs are comprehensive and configurable by the client.


**In essence, even without ongoing access, your responsibility shifts from direct data handling to providing a GDPR-compliant *platform* and the necessary documentation and support for your clients to manage their data in a compliant way. Your product is their tool for GDPR compliance, and you must ensure it's a good one.**