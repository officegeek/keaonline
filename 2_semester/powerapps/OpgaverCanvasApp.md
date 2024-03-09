---
layout: default
title: Opgaver Canvas App
parent: Power Apps
has_children: false
nav_order: 10
---

<span class="fs-1">
[HOME](../index.md){: .btn .btn-blue }
</span>

# Canvas App til Kunde Feedback
Opret en Canvas App, der giver brugerne mulighed for at indsende feedback om et produkt eller en service. 

Appen skal gemme feedback i en Excel-fil.

## Trin:
1. Forbered Datakilden:
    - Opret en Excel-fil med en tabel, der hedder Feedback. Tabellen skal have kolonnerne: 
        - ID
        - Kundenavn
        - Email
        - Feedback (*Drop-down liste i appen*)
        - Kommentar
2. Upload Excel-filen til OneDrive og noter filens placering.
3. Opret en ny Canvas App i Power Apps og vælg en blank skabelon.
4. Tilføj en dataforbindelse til Excel-filen på din OneDrive for Business.
5. Design Appens Brugergrænseflade for at tillade brugere at indtaste deres navn, e-mail, vælge en feedback fra en drop-down liste, og indtaste deres kommentar.
6. Implementer funktionalitet for at indsende feedbacken, så den gemmes i Excel-filen.
7. Test Appen ved at indsende nogle feedbackposter og bekræft, at de vises korrekt i Excel-filen.


# Canvas App til Lagerstyring
Design en Canvas App, der anvender en Excel-fil til at spore lagerbeholdningen af forskellige produkter.

## Trin
1. Forbered Datakilden:
    - Lav en Excel-fil med en tabel, der hedder Lager. Tabellen skal indeholde kolonnerne:
        - ProduktID
        - Produktnavn
        - AntalPåLager
        - MinimumsBeholdning
2. Upload Excel-filen til OneDrive for Business.
3. Opret en ny Canvas App fra bunden i Power Apps.
4. Tilføj en dataforbindelse til din Excel-fil på OneDrive.
5. Design Appens Brugergrænseflade for at vise en liste over produkter, deres nuværende antal på lager, og om de er under minimumsbeholdningen.
6. Tilføj funktionalitet for at opdatere antallet på lager direkte fra appen og reflektere disse ændringer i Excel-filen.
7. Test Appen ved at ændre lagerantal for nogle produkter og kontrollere, at ændringerne korrekt afspejles i Excel-filen.