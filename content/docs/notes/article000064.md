---
title: Cell experiments project
time: 2025-08-30 11:00:00
description: >
   Cell experiments project

authors:
    - Alexander Friesen
tags:
  - portable 
  - cells
  - cell architecture
  - architecture
  - code
  - experiments



---

## Intro
The project is there to grow, add useful features,
reflect an on prem capability landscape

See
<https://github.com/alfrepo/cell-project>


The project is there to grow, add useful features,
reflect an on prem capability landscape.


The goal:
 - use as many modern methods as possible
 - vibe coding
 - ai agents
 - define common dockerization patterns


 ![Network](./article00064/1.png)
 ![Network](./article00064/2.png)


## Scope and Context


### Cell: Custom Spring Boot service
Spring Boot applicaiton


#### Feature: Spring AI

Demonstrating some of
    - Chat Completion
    - Embedding
    - Text to Image
    - Audio Transcription
    - Text to Speech
    - Moderation

<https://spring.io/projects/spring-ai>



```text
projects-root/
├── digital.alf.customsbs/
│   ├── .gradle/
│   │   └── ...
│   ├── src/
│   │   ├── main/
│   │   │   ├── java/
│   │   │   │   └── digital/
│   │   │   │       └── alf/
│   │   │   │           └── customsbs/
│   │   │   │               ├── CustomSbsApplication.java
│   │   │   │               ├── config/
│   │   │   │               ├── controller/
│   │   │   │               ├── model/
│   │   │   │               ├── repository/
│   │   │   │               └── service/
│   │   │   └── resources/
│   │   │       ├── static/
│   │   │       └── application.yml
│   │   └── test/
│   │       └── java/
│   │           └── digital/
│   │               └── alf/
│   │                   └── customsbs/
│   ├── build.gradle
│   ├── Dockerfile
│   ├── gradlew
│   ├── gradlew.bat
│   └── settings.gradle
│
├── another-project/
│   └── ...
│
└── docker-compose.yml 
```


### Cell: Angular PrimeNG based UI & Progressive Web App

The UI with
 - desktop
 - mobile experience



### Cell:  BPM

Similar to Camunda BPM, or forks
https://cibseven.org/preise/ - 71 forks and 219 stars




### Cell: IAM KeyCloack

Should provide IAM for upper service.

Outcome:
understand multi-tenancy, realms

Integrate "Keycloack"


### Cell: Authorization and Policy Decision Point 
Integrate "Kyverno" as "POlicy Decision POint"
https://www.strongdm.com/what-is/policy-decision-point-pdp

### Cell Analytics 

Should take data from upper Service


#### Cell: Kestra.io

Outcome:
To get data from my service and put it into the raw data layer




#### analytical databases 1 : DuckDB
DuckDB


#### analytical databases 2 : Clickhouse
Clickhouse


#### SuperSet
AI Dashboard


### Cell: local RAG

Deployment overview
<https://medium.com/@miroslavmerreider/unlocking-the-power-of-local-offline-retrieval-augmented-generation-with-ollama-and-open-webui-19cd0bc67e81>


Example with RAG
<https://github.com/alexandrainst/alex-rag-webui>


 ![Network](./article00064/3.webp)



 - Start Ollama: The user initiates the Ollama application, which acts as the server for the local LLM.

- Pull & Serve Llama 3: Ollama connects to the internet to download the Llama 3 model from Meta's repository and loads it onto the user's machine, making it ready for processing requests. 3.  Open WebUI Docker: The user runs Open WebUI as a Docker container, isolating the application and its dependencies.

- User Interaction: The user opens a browser, navigates to the Open WebUI interface, and enters a question.

- Process UI Requests: The Open WebUI container receives the user's question. It then sends this request to the Ollama server.

- Process Model Answer: Ollama receives the question, processes it using the Llama 3 model, and generates a response.

- Render Answer: The generated answer is sent back from Ollama to the Open WebUI container, which then displays the final response to the user's browser.

- Web Search for RAG: Perform web searches using providers like SearXNG, Google PSE, Brave Search, serpstack, serper, Serply, DuckDuckGo, TavilySearch, SearchApi and Bing and inject the results directly into your chat experience.

### Flutter Mobile App.
Hello World to access my API.



#### Business Case of App
Use AI on Edge.
Recognize hand written code (KLeiderbörse).
Append to a Google Docs file, written in configured online store.

Columns

- code
- price
- date time
- complete recognized string






## Constraints






## Solution Strategy

## Building Block View

## Runtime View

## Deployment View

## Cross-cutting Concepts

## Architectural Decisions

| Problem               | Decision       | Optimize for attribute   |
|-----------------------|----------------|--------------------------|
| Delivery package      | Docker Cpmpose | Simplicity of deployment |
| Delivery inside of VM | Ansible        | Simplicity of deployment |
| CICD                  | GitHub CICD    |                          |

## Quality Requirements

## Risks and Technical Debt

## Glossary

