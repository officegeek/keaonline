# Brug et officielt Python runtime som base image
FROM python:3.8

RUN pip install --no-cache-dir flask flask-mysqldb

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
