---
layout: default
title: Microservice Excample
parent: IT architecture & Microservice
grand_parent: 4. Semester
nav_order: 20
---

<span class="fs-1">
[HOME](./index.md){: .btn .btn-blue }
</span>

# Nameko


https://github.com/nameko/nameko

# Microservice example project using Python, RabbitMQ, Nameko and Flask

This a simple microservice sale and stock management system using:

- Python
- RabbitMQ
- Nameko
- Flask

## Virtual Environment
- Python
- Nameko - [www.nameko.io](https://www.nameko.io)
- Flask

```shell
python -m venv microdemo
microdemo\Scripts\activate
pip3 install -r requirements.txt
```

You can run this command to see that all packages are installed.

```shell
pip3 list
```

## Docker
The Docker Daemon must be startede (*running*) on your computer. You can do that by starting Docker Desktop.

![](./image/docker_desktop.jpg)

### RabbitMQ Docker
You have to download the RabbitMQ Docker image, run this command in a terminal:

```shell
docker run -d --hostname my-rabbit --name some-rabbit -p 15672:15672 -p 5672:5672 rabbitmq:3-management
```

![](./image/rabbitmy_docker.jpg)

You can access the RabbitMQ dashboard on http://localhost:15672/

- *Username*: **guest**
- *Password*: **guest**

![](./image/rabbitmq_dashboard.jpg)


### Run service
Run this command in the terminal:
```shell
nameko run service --broker amqp://guest:guest@localhost
```

You can test the service by nameko shell:
```shell
nameko shell --broker amqp://guest:guest@localhost
```

Then run
```shell
n.rpc.sale.sell(1)
```

### Run api
```shell
python api.py
```

The api is available on http://localhost:5000/
