---
layout: default
title: Boghandel
parent: Power-BI
has_children: false
nav_order: 60
---
# Normaliserings opgave - Boghandel

## Baggrund
Du arbejder for en boghandel, der ønsker at organisere deres database for at forbedre *effektiviteten* og *reducere redundans*. Databasen indeholder information om **bøger**, **forfattere**, **kunder** og **salg af bøger**.

## Opgave 1 - Uopdelte Data
Givet følgende uopdelte tabel, **BogSalg**:

| SalgsID | BogTitel             | ForfatterNavn   | KundeNavn   | SalgsDato   | AntalSolgt | PrisPrStk | TotalPris |
|---------|----------------------|-----------------|-------------|-------------|------------|-----------|-----------|
| 1       | SQL for Begyndere    | John Doe        | Jane Doe    | 2023-10-01  | 2          | 200       | 400       |
| 2       | Python Programmering | Mary Johnson    | Bob Brown   | 2023-10-02  | 1          | 250       | 250       |
| 3       | SQL for Begyndere    | John Doe        | Jane Doe    | 2023-10-03  | 1          | 200       | 200       |
| 4       | Database Design      | Sarah White     | Alice Green | 2023-10-04  | 3          | 300       | 900       |
| 5       | Java for Alle        | Michael Johnson | Jane Doe    | 2023-10-05  | 2          | 150       | 300       |
| 6       | Python Programmering | Mary Johnson    | Alice Green | 2023-10-06  | 1          | 250       | 250       |
| 7       | SQL for Begyndere    | John Doe        | Bob Brown   | 2023-10-07  | 3          | 200       | 600       |
| 8       | Database Design      | Sarah White     | Jane Doe    | 2023-10-08  | 2          | 300       | 600       |

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