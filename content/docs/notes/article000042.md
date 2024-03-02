---
title: Azure Security - compare
time: 2024-03-02 11:00:00
description: >
  Azure Security - compare Security, Defender, Sentinel

authors:
    - Alexander Friesen
tags:
  - Azure

---

## Intro

Azure Security


![Data_AI_Data_Mesh](https://techcommunity.microsoft.com/t5/image/serverpage/image-id/256459i5FA890E666D3F0CD/image-size/large)


## Description

Let's delve into the purpose and comparison of **Azure Defender**, **Azure Sentinel**, and **Azure Security Center**:


**Comparison**: 🛡️🔍

  - **Azure Security Center** basic security. **Mostly static rules**. Collect logs, events. Security recommendations based on best practices.
  - **Azure Defender** Advanced. More Dynamic. Uses **threat intelligence and AI** to detect incident
  - **Azure Sentinel** combines **Security Information and Event Management** for manual with **Security Orchestration, Automation, and Response** (SOAR) for automatic incident response.


**Overlap**: While they serve different purposes, there is some overlap in functionality, especially between Azure Security Center and Azure Defender.





1. **Azure Security Center**:

    - **Purpose**: Azure Security Center serves as your **"base layer"** for monitoring the security configuration and health of your workloads.
    - **Functionality**:
        - **Collects events** from Azure or log analytics agents.
        - **Correlates events** in a security analytics engine to provide tailored recommendations (hardening tasks).
        - Uses "Azure Policy" initiatives (such as the Azure Security Benchmark) and Azure Monitor logs.
        - Provides proactive security recommendations for Azure Compute, data, identity, access, and networking resources.
        - Includes a network map to visualize the topology of your Azure workloads.


![Data_AI_Data_Mesh](https://techcommunity.microsoft.com/t5/image/serverpage/image-id/256465i68CD48D392D88BCC/image-size/large?v=v2&px=999)



2. **Azure Defender**:

    - **Purpose**: Azure Defender offers **advanced workload** protection.
    - **Functionality**:
        - Protects Azure resources (such as virtual machines, databases, containers, and more) against threats.
        - Uses threat intelligence and AI to detect and respond to security incidents.
        - Provides deep investigation tools to find the **scope and root cause of incidents**.
        - Enables powerful hunting, search, and query capabilities.
    - **Use Case**: Employ Azure Defender to enhance security for specific Azure workloads and services¹.

![Data_AI_Data_Mesh](https://techcommunity.microsoft.com/t5/image/serverpage/image-id/256464iC0199C24BE1457F0/image-size/large?v=v2&px=999)

3. **Azure Sentinel**:
    - **Purpose**: Azure Sentinel combines **Security Information and Event Management** (SIEM) with **Security Orchestration, Automation, and Response** (SOAR).
    - **Functionality**:
        - Collects data from various sources (Azure, on-premises, and other clouds).
        - Uses AI and threat intelligence to detect threats across your environment.
        - **Correlates alerts** into incidents for efficient investigation.
        - Provides deep investigation tools and powerful hunting capabilities.
        - Enables automated response through playbooks.
    - **Use Case**: Azure Sentinel is ideal for comprehensive security monitoring, incident detection, and response across hybrid environments¹.



![Data_AI_Data_Mesh](https://techcommunity.microsoft.com/t5/image/serverpage/image-id/256462iAC7519F10517D10F/image-size/large?v=v2&px=999)










## Links

- <https://techcommunity.microsoft.com/t5/itops-talk-blog/what-s-the-difference-between-azure-security-center-azure/ba-p/2155188>

- (1) What's the difference between Azure Security Center, Azure Defender and .... <https://techcommunity.microsoft.com/t5/itops-talk-blog/what-s-the-difference-between-azure-security-center-azure/ba-p/2155188>
- (2) Microsoft Sentinel vs. Azure Security Center: Features & Benefits .... <https://www.softlanding.ca/blog/microsoft-sentinel-vs-azure-security-center/>
- (3) Microsoft Defender for Cloud vs Microsoft Sentinel | TrustRadius. <https://www.trustradius.com/compare-products/microsoft-defender-for-cloud-vs-microsoft-sentinel>
- (4) What's the difference between Azure Security Center, Azure Defender and .... <https://argonsys.com/microsoft-cloud/library/whats-the-difference-between-azure-security-center-azure-defender-and-azure-sentinel/>