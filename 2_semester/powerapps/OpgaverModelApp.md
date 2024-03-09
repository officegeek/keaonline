---
layout: default
title: Opgaver Model-driven App
parent: Power Apps
has_children: false
nav_order: 20
---

<span class="fs-1">
[HOME](../index.md){: .btn .btn-blue }
</span>

# Opgaver Model-driven Apps
Det at oprette Model-driven Apps i Power Apps involverer typisk at arbejde med datamodeller fremfor direkte integration med Excel-filer som i Canvas Apps. 

Dog kan data fra Excel bruges til at populere din datamodel i Dataverse, som derefter kan udnyttes i din Model-driven App. 

Her er to opgaver, der inkorporerer brugen af Excel-data indirekte gennem Dataverse.

## Model-driven App, der styrer kundeoplysninger
Oprettelse af en Model-driven App, der styrer kundeoplysninger, ved først at importere disse oplysninger fra en Excel-fil til Dataverse.

### Trin
1. **Forberedelse af Data:** Start med en Excel-fil, der indeholder en liste over kunder med kolonner:
    - kundens navn
    - e-mail
    - telefonnummer
    - adresse. 
    Sørg for, at din Excel-fil er gemt på OneDrive eller i et SharePoint-dokumentbibliotek.
2. **Oprettelse af en ny tabel i Dataverse:**
    - Gå til Power Apps og vælg dit miljø.
    - Gå til "Data" > "Tabeller" og opret en ny tabel ved navn "Kunder" med de relevante kolonner, der matcher din Excel-fil.
3. **Import af Data:**
    - Brug dataimportguiden i Power Apps til at importere din Excel-fil til den nyligt oprettede "Kunder"-tabel i Dataverse.
4. **Oprettelse af en Model-driven App:**
    - Opret en ny Model-driven App, der bruger "Kunder"-tabellen som sin primære datakilde.
    - Tilføj de nødvendige visninger og formularer for at vise og redigere kundeoplysningerne.
5. **Tilpasning og Udrulning:**
    - Tilpas appen yderlig ere ved at tilføje søgefunktioner, filtrering og måske forretningsprocesser eller arbejdsflows for at automatisere specifikke opgaver relateret til kundeadministration.
    - Del appen med dine kolleger eller klassekammerater og indsamle feedback.

## Oprettelse af en Model-driven App til Styring af Salgsleads
Oprettelse en Model-driven App, der hjælper med styringen af salgsleads, ved at importere leads fra en Excel-fil ind i Dataverse.

### Trin
1. **Forberedelse af Data:** Lav en Excel-fil, der indeholder salgsleads med kolonner
    - lead-navn
    - kontaktinformation
    - interesseområde
    - status
    Gem filen på en understøttet lagringsplatform.
2. **Oprettelse af en ny tabel i Dataverse:**
    - I Power Apps, opret en tabel ved navn "Salgsleads" med passende kolonner for dine data.
3. **Import af Data:**
    - Importer din Excel-fil til "Salgsleads"-tabellen i Dataverse ved hjælp af dataimportfunktionen.
4. **Oprettelse af Appen:**
    - Opret en Model-driven App, der fokuserer på håndtering af disse leads, inkluderet visninger for at sortere og filtrere leads baseret på status eller interesseområde.
5. **Integration af Forretningslogik:**
    - Implementer forretningslogik, for eksempel automatiske e-mail-notifikationer til leads, baseret på bestemte kriterier eller ændringer i status.
6. **Feedback og Iteration:**
    - Test appens funktionalitet, og søg feedback fra potentielle brugere. Brug feedbacken til at forbedre appen og dens brugeroplevelse.


