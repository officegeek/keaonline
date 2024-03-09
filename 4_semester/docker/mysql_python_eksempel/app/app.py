# Install
#pip install mysql-connector-python
#<full path to python> -m pip install mysql-connector-python

# Moduler
import mysql.connector
import os

# Miljøvariabler for databaseforbindelse
db_host = os.getenv('DB_HOST', 'localhost')
db_user = os.getenv('DB_USER', 'mysql') # MySQL Bruger
db_password = os.getenv('DB_PASSWORD', 'keapassword') # MySQL Database password
db_database = os.getenv('DB_DATABASE', 'dockerdemo') # Database

# Opret databaseforbindelse
connection = mysql.connector.connect(
    host=db_host,
    port=3310,
    user=db_user,
    password=db_password,
    database=db_database
)


# Hent data - SQL
cursor = connection.cursor()
cursor.execute("SELECT * FROM studerende")
rows = cursor.fetchall()

for row in rows:
    print(row)

# Oprydning - Luk forbindelse
cursor.close()
connection.close()