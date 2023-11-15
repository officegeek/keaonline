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
Gens. antal salg pr. kunde = DIVIDE([Total Salg], DISTINCTCOUNT(Salgsdata[Kundenummer]))Salgsdata[Kundenummer]))
```

### Produktanalyse (Nye vs. Refb.)
- Salg af nye og salg af Refb. som to selvstændige målinger

```dax
Salg af Nye = SUMX(FILTER(Salgsdata, Salgsdata[Type] = "Ny"), Salgsdata[Pris])
Salg af Refb = SUMX(FILTER(Salgsdata, AND(Salgsdata[Type] = "Refb", Salgsdata[Status]= "Salg")), Salgsdata[Pris])
```

### Top produkter
- Analyser hvilke produkter der sælger bedst, og hvilke der underpræsterer.
- Brug et søjlediagram eller et pie chart til at illustrere salgsfordelingen mellem forskellige produkter.

### Personale Performance Analyse (Personale)
- Analyser salgsperformance for hvert medlem af salgsteamet.
- Brug et søjlediagram til at sammenligne performance mellem forskellige medarbejder

### Gennemsnitligt Salg per Kunde
- Find det gennemsnitlige salgsbeløb per kunde.