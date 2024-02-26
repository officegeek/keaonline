---
layout: default
title: Import Excel Data
parent: 2. Semester
parent: 2. Semester
has_children: false
nav_order: 30
---

<span class="fs-1">
[HOME](../index.md){: .btn .btn-blue }
</span>

# Import af Excel filer i MySQL
For at importere en Excel-fil (.xlsx eller .xls format) til en MySQL-database, skal du først konvertere din Excel fil til CSV formatet. Årsagen er at MySQL ikke understøtter direkte import af Excel.

## SQL kode for import
Du kan bruge **LOAD DATA** kommandoen til at importere din CSV-fil til en tabel. Sørg for at angive stien til din CSV-fil og matche kolonne-separatorer og linjeskift som i din CSV fil.

```sql
LOAD DATA INFILE '/sti/til/din/fil.csv'
INTO TABLE min_tabel
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
```

IGNORE 1 ROWS bruges til at springe kolonneheaderen over, hvis din CSV-fil indeholder en.

## Import med Workbench
1. Højre klik på din database
2. Vælg "**Table Data Import Wizard**"
3. Vælg din CSV fil
4. Vælg om CSV filen skal importeres til en eksisterende tabel eller om der skal opretes en ny tabel
5. Hvis ny tabel - Tilret filtyper

*Bemærk at dataimporten godt kan tage "lidt" tid*