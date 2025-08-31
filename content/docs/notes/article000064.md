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
cell-spring-boot/
├── .mvn/                      # Maven wrapper files
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/
│   │   │       └── example/
│   │   │           └── cellproject/
│   │   │               ├── Application.java         # Main Spring Boot application class
│   │   │               ├── config/                  # Spring configuration (e.g., SecurityConfig)
│   │   │               ├── controller/              # REST APIs (e.g., ChatController)
│   │   │               ├── model/                   # Data Transfer Objects (DTOs) and Entities
│   │   │               ├── repository/              # Data access layer (e.g., Spring Data JPA)
│   │   │               └── service/                 # Business logic (e.g., AiService)
│   │   └── resources/
│   │       ├── static/                # Static assets (not typical for a backend service)
│   │       ├── templates/             # Server-side templates (if any)
│   │       └── application.yml        # Spring Boot configuration
│   └── test/
│       └── java/
│           └── com/
│               └── example/
│                   └── cellproject/   # Unit and integration tests
├── Dockerfile                 # Builds the Docker image for this cell
├── mvnw                       # Maven wrapper executable (Linux/macOS)
├── mvnw.cmd                   # Maven wrapper executable (Windows)
└── pom.xml                    # Maven project configuration and dependencies
```


### Cell: Angular PrimeNG based UI & Progressive Web App

The UI with
 - desktop
 - mobile experience


### Cell: IAM KeyCloack

Should provide IAM for upper service.

Outcome:
understand multi-tenancy, realms


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
Hello World to access my API and 





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

