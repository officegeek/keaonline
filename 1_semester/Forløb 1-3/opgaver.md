---
layout: default
title: Opgaver
parent: Forløb 1.3
grand_parent: 1. Semester
has_children: false
nav_order: 32
---

<span class="fs-1">
[HOME](../index.md){: .btn .btn-blue }
</span>

# Normaliserings opgave - Boghandel

## Baggrund
Du arbejder for en boghandel, der ønsker at organisere deres database for at forbedre *effektiviteten* og *reducere redundans*. Databasen indeholder information om **bøger**, **forfattere**, **kunder** og **salg af bøger**.

## Opgave 1 - Uopdelte Data
Givet følgende uopdelte tabel, **BogSalg**:

| SalgsID | BogTitel             | ForfatterNavn   | KundeNavn   | SalgsDato   | AntalSolgt | PrisPrStk | TotalPris |
|---------|----------------------|-----------------|-------------|-------------|------------|-----------|-----------|
| 1       | SQL for Begyndere    | John Doe        | Jane Doe    | 2023-10-01  | 2          | 200       | 400       |
| 2       | Python Programmering | Mary Johnson    | Bob Brown   | 2023-10-01  | 1          | 250       | 250       |
| 2       | SQL for Begyndere    | John Doe        | Bob Brown   | 2023-10-02  | 1          | 200       | 250       |
| 3       | SQL for Begyndere    | John Doe        | Bob Brown   | 2023-10-02  | 1          | 200       | 200       |
| 4       | Database Design      | Sarah White     | Alice Green | 2023-10-04  | 3          | 300       | 900       |
| 5       | Java for Alle        | Michael Johnson | Jane Doe    | 2023-10-05  | 2          | 150       | 300       |
| 6       | Python Programmering | Mary Johnson    | Alice Green | 2023-10-06  | 1          | 250       | 250       |
| 7       | SQL for Begyndere    | John Doe        | Bob Brown   | 2023-10-07  | 3          | 200       | 600       |
| 8       | Database Design      | Sarah White     | Jane Doe    | 2023-10-07  | 2          | 300       | 600       |
| 8       | SQL for Begyndere    | John Doe        | Jane Doe    | 2023-10-07  | 1          | 200       | 600       |

- Identificer relationerne mellem disse entiteter.

## Opgave 2 - Normalisering
- Normaliser tabellen BogSalg til 1. normalform (*1NF*)
- Normaliser resultatet fra 1NF til 2. normalform (*2NF*)
- Normaliser resultatet fra 2NF til 3. normalform (*3NF*)

## Opgave 3 - ER-Diagram
Tegn et ER-diagram, der repræsenterer de normaliserede tabeller og deres relationer.

## Løsning
Her er et eksempel på hvordan opgaven kan løses, **men prøv nu først selv**.

[Boghandel løsning](./løsning_boghandel.md)

# Faktura opgave
Du har fået til opgave at oprette en database der kan indeholde de informationer der skal til for at oprette denne faktura.

![](./image/faktura.png)

## Opgaver
- Find de tabeller du mener der skal oprettes i databasen
- I Excel skal du oprette tabellerne og indsætte *lidt* data (*2-6 rækker i hver tabel*)
- Tegn et **ER-diagram** over tabellerne, det skal være synligt hvad der er **PK** og **FK** nøgler

# Online butik opgave
I denne opgave skal du:

- Forstå grundlæggende databasestrukturer (*tabeller, relationer, er-diagram osv.*)
- Importere data til Power BI
- Oprette rapporter og dashboards i Power BI
- Oprette DAX formler

## Data
Du skal bruge et datasæt, der indeholder følgende tabeller:

- **Kunder** - Indeholder kundeinformation (*KundeID, Navn, E-mail, osv.*)
- **Produkter** - Indeholder produktinformation (*ProduktID, Navn, Pris, Lagerstatus, osv.*)
- **Ordrer** - Indeholder ordreinformation (*OrdreID, KundeID, Dato, osv.*)
- **OrdreDetaljer** - Indeholder detaljer om hver ordre (*OrdreID, ProduktID, Antal, osv.*)

Du kan hente data som **CSV filer** her:
- [Kunder.csv](./sql/onlinebutik/Kunder.csv)
- [Produkter.csv](./sql/onlinebutik/Produkter.csv)
- [Ordrer.csv](./sql/onlinebutik/Ordrer.csv)
- [OrdreDetaljer.csv](./sql/onlinebutik/OrdreDetaljer.csv)

## Datamodellering
- Tegn et ER-diagram ud fra disse data.

## Dataimport
- Importer disse tabeller til Power BI
- Etabler relationer mellem tabellerne i Power BI

## Dataanalyse
- Opret en rapport i Power BI, der viser følgende:
    - Samlet salg pr. måned
    - Top 5 produkter efter salg
    - Kunde segmentering (*f.eks. efter geografi eller købsmønster*)
    - *Gerne flere informationer*
- Saml de **vigtigste** grafer og KPI'er i **et** dashboard
- Der skal være **mindst** en slicer og/eller filter 

### Ekstra
- Brug DAX-formler til at beregne nye målinger (*f.eks. gennemsnitlig ordrestørrelse, kundeloyalitet osv.*)

## Deling
- Del dit dashboard med holdet og mig (*tueh@kea.dk*) for feedback
- Opret PowerPoint med live data

## Løsning
Her kan du finde ER-Diagram og eksempler på DAX formler. [Løsning Onlinebutik](./sql/onlinebutik/Løsning_Onlinebutik.md) - *Kommer når i selv har prøvet* :-)