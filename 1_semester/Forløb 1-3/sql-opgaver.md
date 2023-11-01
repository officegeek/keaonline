---
layout: default
title: SQL Opgaver
parent: Forløb 1.3
grand_parent: 1. Semester
has_children: false
nav_order: 31
---

<span class="fs-1">
[HOME](../index.md){: .btn .btn-blue }
</span>

# SQL Opgaver
Du skal bruge databasen **Northwind** til alle opgaverne

## 1.
Find alle lande der er sendt en ordre til, vis dem kun **én gang**, ud fra tabellen: **Orders**

**Resultat**: 70 Rows

## 2
List alle **Produkter** fra tabellen *Products*.
Sorter faldende efter feltet **UnitPrice**.

## 3.
Find alle **Customeres** fra **UK** og **Spain**.
Brug tabellen **Customers**

**Resultat**: 12 Rows

## 4.
Find alle **Products** hvor vi har mere end 100 på lager (*UnitsInStock*) og prisen (*UnitPrice*) er større end eller lig med 25.
Brug tabellen **Products**

**Resultat**: 10 Rows

## 5.
Find alle Products hvor prisen (*UnitPrice*) er større end eller lig med 25.
Brug tabellen **Products**

Resultat:

## 6.
Find alle Ordres der er har en **OrdreDate** i **10 måned af 1996**.
Brug tabellen **Orders**

**Resultat**: 26 Rows

## 7.
Find alle Orders hvor **ShipRegion er blank** (*NULL*), **ShipCountry = Germany**, **Freight** er større end eller lig med **100**, **EmployeeID = 1** og **OrdreDate** er fra **1996**.
Brug tabellen **Orders**

**Resultat**: 2 Rows

## 8.
Find de ordre der ikke er leveret til tiden, *ShippedeDate er større end RequiredDate*
Brug tabellen **orders**

**Resultat**: 37 Rows

## 9.
Find alle Ordre (*OrderDate*) fra 1997 i månederne **januar, februar, marts og april** fra **Canada** (*ShipCountry*)
Brug tabellen **orders**

**Resultat**: 8 Rows

## 10.
Find de **Employees** hvor der ikke er en værdi i **Region** - er "*blank*" (*NULL*). Desuden skal de være født i **1960** eller **tidligere**

Brug tabellen **employees**

**Resultat**: 2 Rows

## 11.
Find de Ordre hvor **EmployeeID** er lig med **2, 5** eller **8**. **ShipRegion** ikke er ’ ’ og **ShipVia** enten er **1 eller 3**. Skal sorteres først efter **EmployeeID** derefter ShipVia begge *acending*

Brug tabellen **orders**

**Resultat**: 57 Rows

## 12.
Opret en SELECT sætning der viser følgende felter:

- Products.ProductID
- Products.ProductName
- Categories.CategoryName

**Resultat**: 77 Rows

## 13.
Opret en SELECT sætning der viser følgende felter:

- Products.ProductID
- Products.ProductName
- Suppliers.CompanyName

**Resultat**: 77 Rows

## 14.
Opret en SELECT sætning der viser følgende felter:

- Orders.OrderID
- Customers.CompanyName
- Name som består af Employees.FirstName og Employees.LastName

**Resultat**: 830 Rows

## 15.
Find alle **TerritoryID** hvor der ikke er en **EmployeeID** tilknyttet

- Employees.EmployeeID
- Territories.TerritoryID
- Territories.TerritoryDescription

**Resultat**: 4 Rows

## 16.
Find alle Products (*ProductName og ProductID*) der er solgt i **maj** måned **1997**

- Products.ProductID
- Products.ProductName

**Resultat**: 96 Rows

## 17.
Opret en SELECT sætning der viser følgende felter:

- Orders.OrderId
- Customers.CompanyName
- Products.ProductName

**Resultat**: 1.000 Rows

## Løsningsfil
Prøv nu selv før du henter denne fil.

[Opgave_Losning.sql](./sql/Opgave_Losning.sql)

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
Her kan du finde ER-Diagram og eksempler på DAX formler. [Løsning Onlinebutik](./sql/Løsning_Onlinebutik) - *Kommer når i selv har prøvet* :-)