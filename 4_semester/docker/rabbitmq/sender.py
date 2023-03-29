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