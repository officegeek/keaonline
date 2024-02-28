---
layout: default
title: Normaliserings opgave
parent: 2. Semester
has_children: false
nav_order: 70
---

<span class="fs-1">
[HOME](../index.md){: .btn .btn-blue }
</span>

# Normaliserings opgave
Opgaven omfatter en simpel database for en boghandel, der inkluderer information om bøger, forfattere og udgivelsesår.

### Udgangspunkt: Data på 0. normalform
Antag, at vi starter med en enkelt tabel, **Boghandel**, som indeholder følgende data:

- BogID
- BogTitel
- ForfatterNavn
- ForfatterFødselsår
- Udgivelsesår
- Genre

I 0NF kan en tabel indeholde duplikerede data, og der er ingen begrænsninger på, hvordan data er organiseret. 

Et eksempel på data i Boghandel tabellen kunne være:

| BogID | BogTitel       | ForfatterNavn | ForfatterFødselsår | Udgivelsesår | Genre   |
|-------|----------------|---------------|--------------------|--------------|---------|
| 1     | Hemmeligheder  | Alice Hansen  | 1975               | 2020         | Fiktion |
| 2     | Ny Begyndelse  | Bob Nielsen   | 1980               | 2021         | Fiktion |

### Mål: Normalisere til 3. normalform
1. **Normalform (1NF)**
    - Ingen duplikerede rækker
    - Hver kolonne indeholder atomiske værdier
2. **Normalform (2NF)**
    - Fjern delvis afhængighed mellem kolonner og den primære nøgle
3. **Normalform (3NF)**
    - Fjern alle transitive afhængigheder

# Løsning - SQL-kode
Du kan hente en løsning som SQL-kodefil her: [boghandel.sql](../dataanalyse_databaser/filer/boghandel.sql)