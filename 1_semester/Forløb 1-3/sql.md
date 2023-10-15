---
layout: default
title: SQL
parent: 26-10-2023 - Databaser
grand_parent: Forløb 1.3
has_children: false
nav_order: 20
---

<span class="fs-1">
[HOME](../index.md){: .btn .btn-blue }
</span>

# SQL

![](./image/logo-sql.png)

## SELECT
Bruges til at hente data fra en database.

**Eksempel**: *Hent alle kolonner fra en tabel ved navn "orders"*

```sql
SELECT * FROM orders;
```

**Eksempel**: *Hent kun kolonner: OrderID, CustomerID, OrderDate
fra en tabel ved navn "orders"*

```sql
SELECT
	OrderID,
    CustomerID,
    OrderDate
FROM orders;
```

## DISTINCT
Vis kun unikke værdier ud fra en kolonne

Eksempel: Find alle lande der er sendt noget til, vis kun hvert land en gang.

```sql
SELECT DISTINCT ShipCountry
FROM orders;
```

## WHERE
Bruges til at filtrere resultaterne baseret på en betingelse.

**Eksempel**: *Vælg alle kolonner fra "orders" hvor "EmployeeID" er lig med 5.*

```sql
SELECT * FROM orders
WHERE EmployeeID = 5;
```

## ORDER BY
Bruges til at sortere resultaterne i en forespørgsel.

**Eksempel**: *Vælg alle kolonner fra "orders" hvor "EmployeeID" er lig med 5. Sorteret efter "OrderDate" i stigende orden - ASC*

```sql
SELECT * FROM orders
WHERE EmployeeID = 5
ORDER BY OrderDate ASC;
```

Samme, bare i faldende orden - DESC

```sql
SELECT * FROM orders
WHERE EmployeeID = 5
ORDER BY OrderDate DESC;
```

## Beregnet kolonne
Det er muligt at fortage beregninger og oprette nye kolonner med beregningen.

**Eksempel**: *Ud fra tabellen orderdetails beregnes en total pr. række* - **UnitPrice * Quantity AS RowTotal**

```sql
SELECT
	OrderID,
    ProductID,
    UnitPrice,
    Quantity,
    UnitPrice * Quantity AS RowTotal
FROM orderdetails;
```

## GROUP BY
Bruges til at gruppere rækker, der har de samme værdier i udvalgte kolonner.

**Eksempel**: *Summering af hver enkelt order i tabellen orderdetails*

```sql
SELECT
	OrderID,
    SUM(UnitPrice * Quantity) AS RowTotal
FROM orderdetails
GROUP BY OrderID
ORDER BY OrderID;
```

## JOIN
Bruges til at kombinere rækker fra to eller flere tabeller baseret på en relateret kolonne.

Eksempel: 