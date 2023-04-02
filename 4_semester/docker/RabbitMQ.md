---
layout: default
title: RabitMQ
parent: Docker
grand_parent: 4. Semester
nav_order: 50
---

![](./image/rabitmq.jpg)

RabbitMQ is a message-queueing software also known as a message broker or queue manager. 

*Simply said*: **it is software where queues are defined, to which applications connect in order to transfer a message or messages. A message can include any kind of information.**

Assuming the Docker Desktop has been installed, pull a RabbitMQ Docker image from DockerHub. 

After the Docker image is downloaded and saved locally, you can start a RabbitMQ container using the following command.

    docker run -d -p 5672:5672 -p 15672:15672 rabbitmq:latest

after start, you can access a rabbitMQ user interface - **localhost:15672**

![](./image/rabbitmqweb.png)

## Username and password
- Default username: **guest**
- Default password: **guest**

## Sender
Create a simple producer program with python3: **sender.py**

```python
import pika, os, logging, time
logging.basicConfig()

url = os.environ.get('CLOUDAMQP_URL','amqp://guest:guest@localhost/%2f')
params = pika.URLParameters(url)
params.socket_timeout = 5

connection = pika.BlockingConnection(params) # Connect to CloudAMQP
channel = connection.channel() # start a channel
channel.queue_declare(queue='pdfprocess') # Declare a queue
for x in range(1000):
    # Message to send to rabbitmq
    bodys = 'data ke '+str(x+1)
    
    channel.basic_publish(exchange='', routing_key='pdfprocess', body=bodys)
    print ("[x] Message sent to consumer = "+bodys)
    a = x % 100
    if (a == 0):
        time.sleep(2)
connection.close()
```

Create a simple producer to get data from queue: **getdata.py**

```python
import pika, sys, os

def main():
    connection = pika.BlockingConnection(pika.ConnectionParameters(host='localhost'))
    channel = connection.channel()

    channel.queue_declare(queue='pdfprocess')

    def callback(ch, method, properties, body):
        print(" [x] Received %r" % body)

    channel.basic_consume(queue='', on_message_callback=callback, auto_ack=True)

    print(' [*] Waiting for messages. To exit press CTRL+C')
    channel.start_consuming()

if __name__ == '__main__':
    try:
        main()
    except KeyboardInterrupt:
        print('Interrupted')
        try:
            sys.exit(0)
        except SystemExit:
            os._exit(0)
```
Run getdata.py and sender.py