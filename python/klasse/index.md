---
layout: default
title: Klasser
parent: Python Guides
has_children: false
nav_order: 10
---

<details open markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

# OOP
Introduktion til Object Oriented Programming i Python

## Hvad er OOP?
**Objektorienteret programmering** (*OOP*) er en måde at strukturere din kode på, så både datas karakteristika og adfærd kan samles i en enkelt struktur.

Denne enkelte struktur giver dig derefter mulighed for at bruge den klasse eller det objekt, du har oprettet igen og igen i hele din kode, efter princippet **Don't Repeat Yourself**.

Dette er i modsætning til *proceduremæssig* programmering, hvor man koder en
sekvens af trin for at udføre en opgave ved hjælp af funktioner og kode blokke.

## Eksempel - Medarbejder
Som eksempel kan vi bruge medarbejdere i en virksomhed. Du ønsker at gemme
disse oplysninger om medarbejderne.

F.eks.

-   Navn
-   E-mail
-   Fødselsdag
-   Afdeling
-   Løntrin
-   Løn
-   Ansættelse dato
-   osv.

Vi vil gerne tilføje noget funktionalitet når en medarbejder gør noget, eller
hvor der sker noget. For eksempel vil du måske give dem en lønforhøjelse eller betale dem en bonus.

Ved at oprette en **medarbejderklasse** kan du gemme alle disse data og udføre
funktioner på hver medarbejder. Du kan genbruge den samme *funktionalitet* igen og igen.

Måden dette gøres på er ved at oprette **klasser**, der bruges som *skabelon*
til **objekter**. Klassen beskriver overordnet hvad objektet vil, men er adskilt fra selve objektet, som er en specifik instans.

## Oprettelse af en klasse
Nu skal klassen oprettes, dette gøres med **keyword class** og den efterfølgende kode indrykket.

Et eksempel på dette ville være som følger:

```python
class Medarbejder:
    pass
```

Her har vi oprette en **Medarbejder** klasse, der tager **pass** som den eneste
attribut i øjeblikket.

Det betyder, at vi har oprettet en **tom klasse**, som i øjeblikket ikke har
nogen funktionalitet indlejret. *Dette er vigtigt, da det er den eneste måde at
oprette en tom klasse på, da du ikke kan lade koden være tom, ellers får du en
fejl.*

```python
Kim = Medarbejder()
```

Du kan checke om en given medarbejder er *medlem* af klassen, **Medarbejder**

```python
print(Ulla.__class__.__name__)
print(Kim.__class__.__name__)
```

Her bruger vi **.class** til at kontrollere typen af klassen, og **.name**
bruges til at udskrive navnet på klassen. I dette tilfælde er det
**Medarbejder**.

## Attributes

Det næste trin er at tilføje attributter til klassen.

Dette gøres ved hjælp af metoden **init()** som kaldes, når en instans
(*objekt*) af klassen oprettes.

Vi vil gerne tilføje følgende attributter til klassen:

-   E-mail
-   Løn
-   Mobil

```python
class Medarbejder:
    
    def __init__(self, lon, email, mobil):
        self.lon = lon
        self.email = email
        self.mobil = mobil
```

Opret medarbejder *Kim*, med information om *løn*, *e-mail* og *mobil*

```python
Kim = Medarbejder(30000, 'kim@mitfirma.dk', 23435363)
```

Ved oprettelse af klassen skal det bemærkes, at alle metoder, der er en del af
klasser, skal have **self** argumentet som den første parameter, selvom det ikke er eksplicit i koden.

I dette tilfælde behøvede vi ikke at angive nogen **self** egenskab ved
oprettelse af *Kim*, men vi bruger den til at tildele attributter til klassen.

Vi kan få adgang attributter i klassen ved hjælp af **.** og **attribut**
navnet.

I dette tilfælde, kan vi få adgang til *løn* og **e-mail**

```python
print(f'Kims løn er: {Kim.lon}')
print(f'Kims e-mail er: {Kim.email}')
```

Forestil dig nu, at du havde tusindvis af medarbejdere, som du havde de samme
oplysninger om.

Vi har en klasse, som gør det muligt for os at oprette hundredvis af objekter
til at gemme disse oplysninger.

*Hvad hvis der manglede nogle oplysninger?*

*For eksempel kunne det være at medarbejderen ikke har fået en mobil?*

I det tilfælde, hvis vi forsøger at oprette en forekomst af klassen uden *mobil* oplysninger, får vi en fejl som følger:

```python
Kim = Medarbejder(30000, 'kim@mitfirma.dk')

TypeError: __init__() missing 1 required positional argument: 'mobil'
```

En måde at løse dette på er at angive en standardværdi

```python
class Medarbejder:
    def __init__(self, lon = 0, email = '', mobil = ''):
        self.lon = lon
        self.email = email
        self.mobil = mobil
```

## Class Attributes
Attributter oprettet ved hjælp af **init**() metoden er **instance**
attributter, da deres værdi er specifik for en *bestemt instans* af klassen.

Her har alle ansatte *løn*, 'e-mail' og *mobil*, hver af disse vil være
specifikke for den forekomst af den oprettede klasse og dermed specifikke for
den pågældende medarbejder.

Der findes også **class** attributter, som har sammen værdi for alle forekomster
af klassen.

Disse attributter tildeles *før* **init()** metoden.

Vi kan med fordel tilføje navnet på den virksomhed som alle medarbejder arbejder
for.

```python
class Medarbejder:
        
    #class attribute
    firmanavn = "Mit firma"
    
    def __init__(self, lon = 0, email = '', mobil = ''):
        self.lon = lon
        self.email = email
        self.mobil = mobil
```

Disse class attributter tilgås på samme måde som instance attributter, men de
vil være de **samme for alle instanser** af den oprettede klasse.

```python
print(f'Kims løn er: {Kim.lon}')
print(f'Kims e-mail er: {Kim.email}')
print(f'Kims mobil er: {Kim.mobil}')
print(f'Firmaet hedder: {Kim.firmanavn}')
```

## Ændringer
*Hvad med at ændre oplysninger om en medarbejder?*

Hvis en medarbejder skal have ændret sin løn eller have nyt mobil nummer, kan vi
opdatere disse informationer på sammen måde som vi kan tilgå dem.

```python
Kim.lon = 40000
Kim.mobil = 87654321
```

## Methods
Vi har nu oprettet **class**- og **instance**- attributter, det næste trin at
tilføje **metoder**.

**init()** er en metode, som vi allerede har brugt til at tildele attributter,
når vi først definerer en instans af klassen.

Vi kan derefter begynde at definere vores egne **metoder**, der udfører bestemte
handlinger med vores objekter.

Disse metoder er defineret på samme måde som funktioner, men da dette er en del
af klassen, skal vi sikre os, at **self** argumentet er overført.

Lad os oprette en metode der kan giver vores medarbejdere en løn stigning på 10%

```pythonn
class Medarbejder:
        
    # class attribute
    firmanavn = "Mit firma"
    
    # 
    def __init__(self, lon = 0, email = '', mobil = ''):
        self.lon = lon
        self.email = email
        self.mobil = mobil
    
    # Løn stigning metode
    def lonstigning(self):
        self.lon += 0.1 * self.lon
```

Når du vil give en medarbejder 10% lønstigning brugere du metoden
**lonstigning**:

```python
# Løn stigning
Kim.lonstigning()

print(f'Kims nye løn er: {Kim.lon}')
```

Ulempen ved denne metode er at den altid giver 10% i lønstigning, lad os gøre
den mere fleksibel.

Vi vil gerne kunne specificer stigningsprocenten, men også beholde 10% som
standard.

```python
class Medarbejder:
        
    # class - attribute
    firmanavn = "Mit firma"
    
    # instance - attributter
    def __init__(self, lon = 0, email = '', mobil = ''):
        self.lon = lon
        self.email = email
        self.mobil = mobil
    
    # Løn stigning metode
    def lonstigning(self, stigninglon = 10):
        self.lon += (stigninglon/100) * self.lon
```

Du kan nu enten bruge standardstigningen på 10% eller specificere den stigning
du ønsker.

```python
Kim.lonstigning(20)
```