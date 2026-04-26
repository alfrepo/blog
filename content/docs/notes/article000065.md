---
title: Access control domain
time: 2025-08-30 11:00:00
description: >
   Access control domain

authors:
    - Alexander Friesen
tags:
  - Access control
  - Physical access control



---

## Intro
Physical access control domain.

This page outlines the structure of the physical access control domain and provides a chapter-style layout you can expand. It includes reader protocols (for example, `Wiegand` and `OSDP`), integration protocols, software/OSS considerations, and security/deployment guidance.

### Goals
- Summarize the access control domain
- List and describe relevant protocols and interfaces

---

## Scope

Brief description of what is (and is not) in scope for this domain description: perimeter and internal door access control, readers, controllers, credentials, and management systems.

## Domain overview

High-level view of how systems interact: readers ↔ controllers ↔ access management software ↔ logs/Audit/Integration with other systems (e.g., video, HR).

## Components

- **Readers** — card readers, mobile credentials, biometrics
- **Controllers** — door controllers, access control panels
- **Locks & hardware** — electric strikes, magnetic locks, door sensors
- **Sensors & peripherals** — request-to-exit, tamper switches
- **Management systems** — Access Control Systems (ACS), physical security information management (PSIM), and OSS (open-source) solutions

## Protocols

### Reader protocols

- **Wiegand** — legacy, simple, largely one-way, many proprietary format variants, minimal security
- **OSDP (Open Supervised Device Protocol)** — modern, bidirectional, supports secure channels, supervision, typically over RS-485; recommended over Wiegand where supported

### Integration & transport

- **Serial / Field buses** — RS-485, RS-232
- **Network / IP** — TCP/IP, REST APIs, MQTT, proprietary vendor protocols

### OSS & Software

- **OSS (Open-source software)** for access control — can provide flexible integration and auditability, but evaluate maturity, community support, and security posture before production use

## Credentials & formats

- Magnetic stripe, prox (125 kHz), smartcards (e.g., MIFARE), mobile credentials (BLE, NFC), biometric templates

## Security considerations

- Encryption for transport (e.g., OSDP secure channel)
- Authentication of devices, firmware update processes, supply chain verification
- Physical tamper detection and response
- Logging, SIEM integration, and auditability

## Deployment & best practices

- Network segmentation and VLANs for ACS devices
- Power and cabling best practices (PoE where appropriate, battery backups)
- Zoning: fail-safe vs fail-secure selection by use case
- Regular testing: alarms, door-forced, tamper and recovery procedures

## Further reading & references

- Links and references to OSDP specification, Wiegand background, and OSS projects (add links as needed)

---

Feel free to indicate which sections you want expanded with more technical depth or examples.

