---
title:  OT security
time: 2024-10-13 20:00:00
description: >
   OT security

authors:
    - Alexander Friesen
tags:
  - OT
  - Purdue


---

## Intro


![Network](./article00055/itvsot.drawio.png)

Safety is paramount in OT.
"Physical safety" outweight "confidentiality".
This is what makes OT security different from IT.

Why do we have to anonymize surveillance videos then?
What does it mean for data confidentiality? GDPR? Datenschutzgesetz?

Do someone know, what the law say about it?


### Purdue Model

What’s the Purpose of the Purdue Model?
The Purdue model, part of the Purdue Enterprise Reference Architecture (PERA), was designed as a reference model for data flows in computer-integrated manufacturing (CIM), where a plant’s processes are completely automated. It came to define the standard for building an ICS network architecture in a way that supports OT security, separating the layers of the network to maintain a hierarchical flow of data between them.

The model shows how the typical elements of an ICS architecture interconnect, dividing them into six zones that contain information technology (IT) and OT systems. Implemented correctly, it helps establish an “air gap” between ICS/OT and IT systems, isolating them so an organization can enforce effective access controls without hindering business.

Zones of the Purdue Model
OT systems occupy the lower levels of the model while IT systems occupy the upper levels, with a “demilitarized zone” of convergence between them.

Let’s take a look at each of the zones in the Purdue reference model, top to bottom.


![Network](./article00055/purdue-model.webp)
![Network](./article00055/purdue-layers.png)

### Measures for IT OT convergence


#### Segmentation Remains A Valid Concept

While hyperconvergence has rendered the Purdue Model all but obsolete, the concepts behind it remain valid. While it's not realistic to think that all OT systems can be completely disconnected from other networks, it is possible to monitor and regulate the communications that must take place.


#### Visibility Across IT, IoT And OT

The first step toward that goal is by establishing comprehensive visibility into all devices in an enterprise's technology infrastructure and then monitoring device behavior. This means visibility across the converged IT and OT environment. 

#### One Converged Security Team

Finally, in a converged IT and OT environment, security teams need to reconsider their management and reporting structure. Siloed physical security, OT security, IT security and supply chain teams need to be reorganized to ensure an effective security strategy that spans IT and OT environments. 

 - <https://www.forbes.com/councils/forbestechcouncil/2022/01/18/a-reimagined-purdue-model-for-industrial-security-is-possible/>


## Protocols in the OT world

Sure, here is the table you requested:

| Category                    | Protocols                                               |
|-----------------------------|---------------------------------------------------------|
| Process Automation          | CIP, Modbus, DNP3, EtherNet/IP, HART, PROFINET, GE SRTP |
| Industrial Control Systems  | OPC, OPC UA, OMG DDS, MTConnect, Modbus                 |
| Building Management Systems | BACnet, LonTalk, Modbus, ZigBee                         |
| Power System Automation     | DNP3, IEC-60870-5, IEC-61850, ICCP                      |
| Automatic Meter Reading     | IEC-61107, ZigBee, Modbus                               |
| Automotive Vehicle          | CAN, FlexRay, LIN                                       |

I hope this is helpful! Let me know if you have any other questions.


## Links

- <https://www.zscaler.com/resources/security-terms-glossary/what-is-purdue-model-ics-security>
- 


## Glossary


### Fieldbus

[![Financial Services AWS](https://img.youtube.com/vi/ndc6at_d7uQ/0.jpg)](https://youtu.be/ndc6at_d7uQ?si=Xl9-fGEMvtFqE-hu&t=48 "Data+AI Data Mesh")


### Fieldbus Protocol "ControlNet"
ControlNet is an open industrial network protocol belonging to the Common Industrial Protocol (CIP) family.

ControlNet is included in the EN 50170 and IEC 61158 standards.

### Fieldbus Protocol "Profibus"

Is a standard for fieldbus communication in automation technology and was first promoted in 1989 by BMBF (German department of education and research) and then used by Siemens.

Profibus is openly published as type 3 of IEC 61158/61784-1.

### Fieldbus Protocol "MQTT"

IoT Native protocol.

