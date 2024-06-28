---
layout: default
title: Digital Bank
grand_parent: 2. Semester
parent: IT-arkitektur og datahåndtering
has_children: false
nav_order: 20
---

<span class="fs-1">
[HOME](../index.md){: .btn .btn-blue }
</span

# Design af IT-arkitektur for en Digital Bank
I skal designe en IT-arkitektur for en **digital bank**, som benytter microservices og/eller SOA-arkitektur. 

Der skal udarbejdes dokumenter for:
- Data-arkitektur
- Applikations-arkitektur
- Teknologi-arkitektur

## Krav til opgaven

### Data-Arkitektur Dokument
- Beskriv hvordan data organiseres og opbevares
- Definer hvordan dataintegritet og sikkerhed håndteres
- Skitsér en model for de vigtigste datatyper og deres relationer

### Applikations-Arkitektur Dokument
- Design af microservices
    - Beskriv hvilke services der skal være, og hvordan de kommunikerer internt og eksternt.
- Beskriv hvordan SOA-principper kan integreres i microservice-arkitekturen
- Fremhæv hvordan services skal håndtere transaktioner, autentifikation, og autorisation

### Teknologi-Arkitektur Dokument
- Vælg og begrund teknologier (*platforme, sprog, databaser, etc.*) til at understøtte de definerede services
- Beskriv deployment modellen (*f.eks. containerisering, cloud deployment*)
- Angiv sikkerheds- og overvågningsstrategier

# Grupper
For at strukturere projektet omkring implementering af Service-Oriented Architecture (SOA) og Microservices, opdeler vi opgaven i flere delopgaver baseret på specifikke funktionelle områder eller komponenter af systemet.

Ved at opdele projektet på denne måde kan hvert team fokusere på jeres specifikke del af systemet, samtidig med at I arbejder mod en samlet arkitektur. 

Dette fremmer ikke kun specialisering og dybdegående kendskab til hver del, men muliggør også en mere skalerbar og vedligeholdelsesvenlig løsning.

Her er opdeling af opgaverne i forskellige teams, hvor hvert team fokuserer på et bestemt område:

##  1. Kundeadministrations Team
### Opgaver
- Udvikling af services til håndtering af kundedata, herunder registrering, opdatering, og sletning af kundeinformation.
- Integration med andre systemer for at hente og synkronisere kundedata på tværs af platforme.

## 2. Kontoadministrations Team
### Opgaver
- Udvikling af services for kontooprettelse, administration og lukning.
- Implementering af sikkerhedsprotokoller for at sikre kontooplysninger.
- Sikre integration med betalingssystemer og andre finansielle tjenester.

## 3. Transaktionshåndterings Team
### Opgaver
- Udvikling af services for håndtering af forskellige typer transaktioner (ind- og udbetalinger, overførsler, etc.).
- Sikring af dataintegritet og transaktionshistorik.
- Integration med eksterne finansielle institutioner og tjenester.

## 4. Support og Service Team
### Opgaver
- Udvikling af kundesupportservices, herunder FAQ, live chat, og ticketing system.
- Implementering af feedback loops med kunder for forbedring af tjenester.
- Overvågning og vedligeholdelse af service performance.

## 5. Infrastruktur og Deployment Team
### Opgaver
- Opsætning og vedligeholdelse af serverinfrastruktur.
- Implementering af CI/CD pipelines for automatiseret testing og deployment.
- Overvågning af systemets sundhed og skalerbarhed.

## 6. Sikkerheds Team
### Opgaver
- Udvikling af robuste sikkerhedsprotokoller for alle services.
- Implementering af kryptering, autentificering og autoriseringsteknikker.
- Regelbaseret adgangskontrol og regelmæssige sikkerhedsrevisioner.

# Løsningsforslag til Opgaven
## Data-Arkitektur
- Data organiseres i en distribueret database med microservices, der hver har ansvar for deres data (*database per service*)
- Brug af teknologier som SSL/TLS for sikker dataoverførsel, og anvendelse af kryptering både i hvile og i transit
- Entity-relationship diagram med kunder, konti, transaktioner osv.

## Applikations-Arkitektur
- Microservices eksempler: **KundeManagementService**, **KontoService**, **TransaktionsService**
- SOA integreres ved at anvende en **ESB** (*Enterprise Service Bus*) til at facilitere kommunikation mellem services og understøtte komplekse forretningsprocesser
- Autentifikation via **OAuth**, og transaktionssikkerhed gennem idempotente operationer

## Teknologi-Arkitektur
- Anvendelse af f.eks. **Java** og **Spring Boot** for microservices og **React** for front-end
- Containerisering med Docker og orkestrering med Kubernetes
- Implementering af overvågning
- Anvendelse af Azure som cloud platform med stærke sikkerhedsmekanismer