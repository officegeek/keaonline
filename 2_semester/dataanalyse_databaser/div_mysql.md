---
layout: default
title: Diverse MySQL
parent: 2. Semester
parent: 2. Semester
has_children: false
nav_order: 40
---

<span class="fs-1">
[HOME](../index.md){: .btn .btn-blue }
</span>

# secure-file-priv
**secure-file-priv** er en indstilling i MySQL, der begrænse hvilke filer serveren kan læse fra og skrive til, når den udfører filbaserede operationer som f.eks. import.

Denne indstilling øger databaseserverens sikkerhed ved at forhindre uautoriseret adgang til filsystemet uden for de specifikke godkendte stier.

Når **secure-file-priv** er sat, kan MySQL-serveren kun importere filer fra og eksportere filer til den specificerede mappe. 

- Hvis indstillingen er **tom**, er filimport og -eksportoperationer deaktiveret
- Hvis indstillingen **ikke er angivet** i konfigurationsfilen (*my.cnf eller my.ini*), kan serveren potentielt få adgang til filer i hele filsystemet, afhængigt af serverens andre sikkerhedsindstillinger og operativsystemets tilladelser.

Her er nogle eksempler på, hvordan secure-file-priv kan anvendes:

- **Forhindre enhver filoperation**: Sæt secure-file-priv til en tom streng for at deaktivere evnen til at importere fra og eksportere til filer helt.
- **Begrænse filoperationer til en bestemt mappe**: Sæt secure-file-priv til stien til en mappe, hvor du ønsker at tillade filoperationer. MySQL-serveren vil kun kunne importere og eksportere filer fra denne mappe. Det betyder altså at det er her du skal placere de CSV filer du vil importere.

Du kan konfigurere secure-file-priv i din **my.cnf** eller **my.ini** fil under **[mysqld]** sektionen, for eksempel:

```sql
[mysqld]
secure-file-priv=/sti/til/mappen
```

Du kan se din nuværende indstilling ved at afvikle denne SQL kode:

```sql
SHOW VARIABLES LIKE 'secure_file_priv';
```

![](../image/mysql_fil_priv.jpg)

## my.ini folder
Min my.ini fil på Windows er placeret i mappen: **C:\ProgramData\MySQL\MySQL Server 8.0\my.ini**

**Her skal du rette/tilføje:**

*secure-file-priv="C:/ProgramData/MySQL/MySQL Server 8.0/Uploads"*

**Den mappe du vil importere fra,**

![](../image/secure-fil-priv.jpg)

Denne funktion er særligt vigtig for at forhindre **SQL-injektionsangreb**, der forsøger at udnytte filbaserede operationer til at få adgang til eller manipulere filer på serveren. Ved at begrænse filadgangen kan du reducere risikoen for uautoriseret adgang til følsomme data eller systemfiler.

Se mere her: [https://dev.mysql.com/doc/refman/8.0/en/server-system-variables.html#sysvar_secure_file_priv](https://dev.mysql.com/doc/refman/8.0/en/server-system-variables.html#sysvar_secure_file_priv)
