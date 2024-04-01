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