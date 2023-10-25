---
layout: default
title: SQL Opgaver
parent: Forløb 1.3
grand_parent: 1. Semester
has_children: false
nav_order: 18
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