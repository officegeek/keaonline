---
layout: default
title: FastAPI and Docker
parent: Docker
grand_parent: 4. Semester
nav_order: 50
---

# FastAPI and Docker

# FastAPI
Create a simpel FastAPI app, in a new virtuel enviroment .

Create the Python file: app.py

```python
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"Hello": "World"}

@app.get("/items/{item_id}")
def read_item(item_id: int, q: str = None):
    return {"item_id": item_id, "q": q}

```

This FastAPI app has two endpoints: a root endpoint that returns a simple greeting, and an endpoint that takes an **item_id** parameter and an optional **q** query parameter.

# Dockerfile
Create a Dockerfile to package this app into a Docker container:

```
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 80

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "80"]
```

## Build Docker image
To build the Docker image, run:

    docker build -t my-fastapi-app .

This command tells Docker to build an image using the instructions in the Dockerfile and to tag the image with the name **my-fastapi-app**

Once the image is built, you can run it using the docker run command:

    docker run -p 80:80 my-fastapi-app

This command tells Docker to run the my-fastapi-app image and to map port 80 on the host machine to port 80 in the container. 

This will allow you to access the API from your host machine at http://localhost