---
layout: default
title: Løsning Onlinebutik
parent: Forløb 1.3
grand_parent: 1. Semester
has_children: false
nav_order: 36
---

# Er-Diagram
![](../image/er-boghandel.jpg)

# DAX formler
## Samlet Salg
For at beregne det samlede salg kan du bruge følgende DAX-formel:

```dax
TotalSales = SUMX('OrdreDetaljer', 'OrdreDetaljer'[Antal] * RELATED('Produkter'[Pris]))
```

## Gennemsnitlig Ordrestørrelse
For at finde den gennemsnitlige ordrestørrelse:

```dax
AverageOrderSize = DIVIDE([TotalSales], COUNTROWS('Ordrer'))
```

## Mest Solgte Produkt
For at finde det mest solgte produkt:

```dax
TopSellingProduct = MAXX('Produkter', [TotalSales])
```

## Kunde Loyalitet
For at måle kundeloyalitet, kan du tælle antallet af ordrer pr. kunde:

```dax
CustomerLoyalty = COUNTROWS(FILTER('Ordrer', 'Ordrer'[KundeID] = EARLIER('Ordrer'[KundeID])))
```

## Salg pr. Måned
For at beregne salg pr. måned:

```dax
SalesPerMonth = CALCULATE([TotalSales], DATESMTD('Ordrer'[Dato]))
```