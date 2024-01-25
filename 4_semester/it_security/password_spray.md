
---
layout: default
title: Password Spray Attack
parent: IT security
grand_parent: 4. Semester
nav_order: 40
---

<span class="fs-1">
[HOME](../index.md){: .btn .btn-blue }
</span>

# Password Spray Attack

Et "**Password Spray Attack**" kan beskrives som et cyberangreb, hvor angriberen forsøger at opnå uautoriseret adgang til flere brugerkonti ved at anvende almindelige adgangskoder. 

Forskellen fra traditionelle brute-force angreb er, at i stedet for at forsøge mange forskellige adgangskoder på én konto, "**sprayer" angriberen samme adgangskode** (*eller få forskellige adgangskoder*) mod mange brugerkonti. 

Dette mindsker risikoen for at udløse sikkerhedsforanstaltninger som låser konti efter for mange mislykkede loginforsøg.

## Eksempler på, hvordan et password spray attack kan udføres:

1. **Indsamling af Brugernavne** Angriberen starter med at samle en liste over brugernavne fra målorganisationen. Dette kan gøres gennem phishing-kampagner, offentligt tilgængelig information eller andre metoder.

2. **Valg af Almindelige Adgangskoder** Angriberen vælger derefter almindelige adgangskoder, som ofte anvendes, såsom "123456", "password", "sommer2024" osv.- [Se top 100 Passwords](https://en.m.wikipedia.org/wiki/Wikipedia:10,000_most_common_passwords)

3. **Udførelse af Angrebet** Med denne information forsøger angriberen at logge ind på hver konto med hver af de valgte adgangskoder. Dette sker normalt over en periode for at undgå opdagelse.

4. **Udnyttelse af Succesfulde Logins** Hvis angriberen lykkes med at få adgang til en eller flere konti, kan de udnytte dette til yderligere ondsindet aktivitet, såsom datatyveri, installation af malware eller yderligere angreb inden for netværket.

For at beskytte sig mod password spray-angreb anbefales det at bruge stærke, unikke adgangskoder til hver konto, **aktivere tofaktorautentificering** hvor det er muligt, og implementere sikkerhedspolitikker, der kan opdage og reagere på unormal loginaktivitet.

# YouTube demo

https://youtu.be/UPFG-fvIOLw?si=3pZmvWSR34QWw685

# Eksempler

## Microsoft 2024
Microsoft *hævder* at være blevet hacket af russiskstøttet gruppe.

- https://nyheder.tv2.dk/udland/2024-01-20-microsoft-haevder-at-vaere-blevet-hacket-af-russiskstoettet-gruppe
- https://msrc.microsoft.com/blog/2024/01/microsoft-actions-following-attack-by-nation-state-actor-midnight-blizzard/#:~:text=Beginning%20in%20late%20November%202023,of%20our%20senior%20leadership%20team
- https://amp.cnn.com/cnn/2024/01/19/tech/microsoft-russian-hacking-executives/index.html


## HSBC Bank 2018
I 2018 rapporterede HSBC Bank om et forsøg på password spray-angreb, hvor angriberne forsøgte at få adgang til kundeoplysninger ved at anvende almindeligt brugte adgangskoder.

- 
https://www.zdnet.com/article/hsbc-discloses-security-incident

## Zoom
Under COVID-19-pandemien, da brugen af videokonferenceplatformen Zoom steg dramatisk, blev Zoom mål for en række sikkerhedsangreb, herunder password spraying.

## GitHub
GitHub har også rapporteret om password spray-angreb.