---
layout: default
title: KEAsneakers
parent: Forløb 1.4
grand_parent: 1. Semester
has_children: false
nav_order: 80
---

<span class="fs-1">
[HOME](../index.md){: .btn .btn-blue }
</span>

# KEAsneakers

## Filer
- [keasneakers_data_studerende.xlsm](./keasneakers_data_studerende.xlsm)
- [Personale.csv](./Personale.csv)

## Transform data
Er der problemer med de data du har fået fra KEAsneakers?

Det kunne være:
- Dubletter i primærnøgler
- Datatyper
- Tomme rækker
- Tomme kolonner

## Beregnede felter

## ER Diagram
![](./keasneakers_ER.jpg)

## DAX & Diagram forslag
Her er nogle forslag til DAX beregninger og diagrammer.

### Salgsanalyse
- Analyser samlet salg over tid (månedligt/årligt).
- DAX-formel for samlet salg:

```dax
Total Salg = SUM(Salgsdata[Pris])
```

- Lav et diagram for at vise salgstrends over tid.

### Kundeanalyse (Kunder)
- Segmenter kunder baseret på købshistorik, geografi, eller andre demografiske data. Her antal medlemmer.
- DAX-formel for kundesegmentering antal medlemmer:

```dax
Total Salg = SUMX(tblSalgsdata, RELATED(tblProdukter[SalgsPris DKK]))
```

### Genemsnitlig salg pr. kunde
- Find hvad vi i snit sælger til hver kunde

```dax
Gens. antal salg pr. kunde = DIVIDE([Total Salg], DISTINCTCOUNT(Salgsdata[Kundenummer]))
```

### Produktanalyse (Nye vs. Refb.)
- Salg af nye og salg af Refb. som to selvstændige målinger

```dax
Salg af Nye = SUMX(FILTER(Salgsdata, Salgsdata[Type] = "Ny"), Salgsdata[Pris])
Salg af Refb = SUMX(FILTER(Salgsdata, AND(Salgsdata[Type] = "Refb", Salgsdata[Status]= "Salg")), Salgsdata[Pris])
```

### Top produkter
- Analyser hvilke produkter der sælger bedst, og hvilke der underpræsterer.
- DAX-formel for top-sælgende produkter:

```dax
Top Products = TOPN(10, SUMMARIZE(Produkter, Produkter[ProduktNavn], "Total Sales", SUM(Salgsdata[Salgsbeløb])), [Total Sales], DESC)
```

- Brug et søjlediagram eller et pie chart til at illustrere salgsfordelingen mellem forskellige produkter.

### Personale Performance Analyse (Personale)
- Analyser salgsperformance for hvert medlem af salgsteamet.
- DAX-formel for salgsperformance:

```dax
Sales by Employee = SUMX(RELATEDTABLE(Salgsdata), Salgsdata[Salgsbeløb])
```

- Brug et søjlediagram til at sammenligne performance mellem forskellige medarbejder

### Årlig Vækstrate
- Beregn den årlige vækstrate i salg.
- DAX-formel:

```dax
Yearly Growth Rate = DIVIDE([Total Sales This Year] - [Total Sales Last Year], [Total Sales Last Year])
```

### Gennemsnitligt Salg per Kunde
- Find det gennemsnitlige salgsbeløb per kunde.
- DAX-formel:

```dax
Average Sale per Customer = DIVIDE([Total Sales], DISTINCTCOUNT(Kunder[KundeID]))
```

### Aldersbaseret Kundeanalyse
- Segmenter kunder baseret på alder, hvis du har aldersdata.
- DAX-formel:

```dax
Customers by Age Group = CALCULATE(COUNTROWS(Kunder), Kunder[Alder] >= 20 && Kunder[Alder] < 30)
```

### Lagerstatus for Produkter
- Beregn den aktuelle lagerstatus for hvert produkt.
- DAX-formel:

```dax
Current Stock = SUM(Produkter[StartLager]) - SUM(Salgsdata[AntalSolgt])
```

### Return on Investment (ROI)
- Hvis du har omkostningsdata, kan du beregne ROI for forskellige produkter eller markedsføringskampagner.
- DAX-formel: 

```dax
ROI = (Net Profit / Total Investment) * 100
```

### Måned-til-Dato og År-til-Dato Analyser
- Beregn salg for den aktuelle måned eller år til dato.
- DAX-formler:

```dax
MTD Sales = TOTALMTD(SUM(Salgsdata[Salgsbeløb]), 'Date'[Date])
YTD Sales = TOTALYTD(SUM(Salgsdata[Salgsbeløb]), 'Date'[Date])
```

### Procentdel af Totalt Salg
- Beregn hvert produkts eller kategoris bidrag til det samlede salg.
- DAX-formel:

```dax
Percent of Total Sales = DIVIDE(SUM(Salgsdata[Salgsbeløb]), [Total Sales])
```