---
layout: default
title: Smart City Trafikstyringssystem
parent: IT-arkitektur og datahåndtering
has_children: false
nav_order: 10
---

<span class="fs-1">
[HOME](../index.md){: .btn .btn-blue }
</span>

![](logo.jpg)

# Smart City Trafikstyringssystem
Smart City-initiativet ønsker at udvikle et integreret trafikstyringssystem, der optimerer trafikflow og reducerer ventetider ved lyskryds. 

Systemet skal bruge realtidsdata fra trafiksensorer og kameraer til at justere signaler dynamisk og give realtidsopdateringer til bilister via en app.

### Krav til dataarkitektur
- **Sensor Data**: Registrerer trafikdensitet, hastighed og andre relevante målinger.
- **Kamera Data**: Indeholder video feeds fra kryds og vigtige strækninger.
- **Bruger Data**: Information om app-brugere, herunder præferencer og historisk ruteinformation.
- **Signalstyringslogik**: Logik til justering af lyskryds baseret på dataanalyse.

### Krav til applikationsarkitektur
- **Frontend App**: Viser trafikinformation og ruteanbefalinger til brugerne.
- **Backend Server**: Håndterer datalogning, databehandling og signalstyring.
- **Databaseserver**: Lagrer og administrerer alle indsamlede data og brugertilstande.
- **Analytics Engine**: Analyserer trafikdata for at optimere trafikflow og signal timing.

## Diagram Krav
### Data Arkitektur Diagrammer
- **Data Entity/Relationship Diagram** (ERD)
    - Viser entiteter som Sensor Data, Kamera Data, Bruger Data og deres relationer.
- **Data Flow Diagram** (DFD)
    - Illustrerer, hvordan data strømmer mellem sensorer, databaser og applikationer.
- **Logical Data Model**
    - Abstrakt repræsentation af datastrukturen, der viser hvordan data organiseres uden specifikke databaseteknologier.
- **Physical Data Model**
    - Specifik implementering af logical data model i en database med detaljer om tabeller, relationer og datatyper.

### Applikations Arkitektur Diagrammer
- **Application Communication Diagram**
    - Viser, hvordan forskellige applikationskomponenter kommunikerer (*f.eks. app, server, database*).
- **Software Architecture Diagram**
    - Detaljeret visning af softwarekomponenterne i backend og frontend og deres interaktioner.
- **System Integration Diagram**
    - Illustrerer integrationen mellem systemkomponenterne og eksterne interfaces (*f.eks. trafiksensor API'er*).
- **Technology Stack Diagram**
    - Viser de teknologier, der anvendes på de forskellige lag af applikationen (*frontend frameworks, backend sprog, databaseteknologier*).
- **Deployment Diagram** (UML)
    - Viser, hvordan systemkomponenterne deployes på fysiske og virtuelle maskiner.
- **Component Diagram** (UML)
    - Viser de større softwarekomponenter inden for hver applikation, deres grænseflader og relationer.

# Løsningsforslag
## Data Arkitektur
- **ERD**: Inkluderer entiteter for Sensor Data, Kamera Data, og Bruger Data, med relationer som "**sendes til**" databaser og "**anvendes af**" signalstyringslogikken.
- **DFD**: Starter med dataindsamling fra sensorer og kameraer, dataflow til databehandling og slutter med output til signalregulering og brugerapp.
- **Logical Model**: Organiserer data i kategorier som Trafikdata, Brugerprofiler, og Systemindstillinger.
- **Physical Model**: Detaljerer tabeller som TrafficData, UserProfiles, og SystemSettings med nøgler og datatyper som INTEGER, VARCHAR osv.

## Applikations Arkitektur
- **Application Communication Diagram**: Inkluderer komponenter som User App, Backend Server, og Database Server med angivelse af API-opkald.
- **Software Architecture Diagram**: Viser arkiteturen for de centrale systemkomponenter inklusive moduler for datahåndtering, analyse, og brugerinteraktion.
- **System Integration Diagram**: Demonstrerer forbindelser mellem systemets interne moduler og tredjepartstjenester som trafiksensor API'er.
- **Technology Stack Diagram**: Skitserer anvendelsen af React og Node.js på klient- og server-siden, MySQL som databaselag, og Docker for containerisering.
- **Deployment Diagram** (UML): Viser deployment af appen og backend på AWS EC2 instanser, med separate instanser for database servere.
- **Component Diagram** (UML): Opdeler backend i services som *Traffic Management*, *Data Processing*, og *User Management*, hver med deres egne API'er og databaser.