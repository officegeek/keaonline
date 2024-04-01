---
layout: default
title: 4. sem 2024 Forår - Opgave
parent: Docker
grand_parent: 4. Semester
nav_order: 6
---

<span class="fs-1">
[HOME](./index.md){: .btn .btn-blue }
</span>

# Flask-webserver - Python
I skal løse denne opgave, der involverer oprettelse af to Docker-containere, der kan kommunikere med hinanden. 

Den ene container vil køre en simpel webserver, og den anden vil fungere som en klient, der kan sende anmodninger til webserveren.

Målet med denne opgave er at give jer praktisk erfaring med Docker, netværkskommunikation mellem containere, og grundlæggende webudvikling med Flask.

## Opgavebeskrivelse
**Mål**: At oprette to Docker-containere, hvoraf den ene kører en enkel **Flask-webserver**, og den anden kører en klient (*for eksempel et Python-script*), der sender anmodninger til webserveren. 

Formålet er at demonstrere netværkskommunikation mellem containere i Docker.

## Del 1: Flask Webserver Container
Opret Flask-applikationen - Flask-applikationen kan have et enkelt endpoint, der returnerer en simpel besked, for eksempel "Hello from Flask!".

**Dockerfile for Flask Container** - Du skal oprette en Dockerfile til Flask-applikationen, der definerer, hvordan containeren skal bygges. Denne Dockerfile skal indeholde instruktioner for at installere Python, Flask og andre nødvendige afhængigheder.

**Byg og Kør Flask Container** - Brug docker build og docker run kommandoer til at bygge din Flask-container og køre den. Sørg for, at du eksponerer den korrekte port, så klienten kan kommunikere med den.

## Del 2: Klient Container
**Opret Klient-applikationen** - Klient-applikationen kan være et simpel Python-script, der bruger requests biblioteket til at sende en GET-anmodning til Flask-webserveren og udskrive svaret.

**Dockerfile for Klient Container** - Lig som med Flask-containeren, skal du oprette en Dockerfile for klient-applikationen. Denne Dockerfile skal inkludere Python og nødvendige biblioteker (som requests).

**Byg og Kør Klient Container** - Efter at have oprettet Dockerfile, skal du bygge og køre klient-containeren. Sørg for, at den kan kommunikere med Flask-containeren, enten ved at placere dem i samme Docker-netværk eller ved at bruge Docker Compose.

## Ekstra Udfordringer
**Docker Compose**: Brug Docker Compose til at definere og køre dine multi-container Docker-applikationer. Opret en docker-compose.yml-fil, der konfigurerer begge dine tjenester (*Flask og klient*) og netværket, de skal kommunikere over.

**Respons Analyse**: Udvid klient-applikationen til at analysere svaret fra Flask-applikationen yderligere. For eksempel, parse en JSON-respons og udskriv specifikke data.

**Fejlhåndtering**: Tilføj fejlhåndtering i både Flask-applikationen og klient-applikationen. For eksempel, håndter scenarier, hvor Flask-applikationen ikke er tilgængelig, eller svaret ikke som forventet.

# Løsning - Flask-webserver - Python
Her er en vejledende løsning.

## Flask Webserver
Flask App (**app.py**)

```py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello from Flask!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
```

## Dockerfile for Flask Container
**Dockerfile**

```cmd
# Brug et officielt Python runtime som base image
FROM python:3.8

# Sæt arbejdsdirectory i containeren
WORKDIR /app

# Kopier den lokale kode til containeren
COPY . /app

# Installer de nødvendige pakker
RUN pip install --no-cache-dir flask

# Gør port 5000 tilgængelig til verden udenfor containeren
EXPOSE 5000

# Kør app.py når containeren lanceres
CMD ["python", "app.py"]
```

## Klient Container
Klient Script (**client.py**)

```py
import requests

def main():
    response = requests.get('http://flask:5000/')
    print(response.text)

if __name__ == '__main__':
    main()
```

## Dockerfile for Klient Container

```cmd
# Brug et officielt Python runtime som base image
FROM python:3.8

# Sæt arbejdsdirectory i containeren
WORKDIR /app

# Kopier den lokale kode til containeren
COPY . /app

# Installer requests pakken
RUN pip install --no-cache-dir requests

# Kør client.py når containeren lanceres
CMD ["python", "client.py"]
```

## Docker Compose File
**docker-compose.yml** til at køre begge services sammen

```yml
version: '3'

services:
  flask:
    build: ./flask
    ports:
      - "5000:5000"
    volumes:
      - ./flask:/app

  client:
    build: ./client
    depends_on:
      - flask
```

## Vejledning til Opsætning
1. Opret en mappestruktur som følger:
    - En hovedmappe, under den to undermapper: **flask** og **client**.
    - Placer **Flask Dockerfile** og **app.py** i flask mappen.
    - Placer **Klient Dockerfile** og **client.py** i client mappen.
    - **docker-compose.yml** skal være i hovedmappen.

2. Byg og kør dine containere med Docker Compose:
    - Åbn en terminal i hovedmappen.
    - Kør kommandoen **docker-compose up --build**. Dette vil bygge og starte begge dine containere. Flask-applikationen vil være tilgængelig på **http://localhost:5000**, og klient-containeren vil sende en anmodning til denne adresse, når den starter.

