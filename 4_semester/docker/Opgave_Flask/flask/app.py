from flask import Flask, jsonify
from flask_mysqldb import MySQL

app = Flask(__name__)

mysql = MySQL(app)

@app.route('/')
def home():
    return "Velkommen til"

@app.route('/kea')
def kea():
    return "Hej med jer på KEA"

@app.route('/db')
def db():
    while True:
        try:
            connection = mysql.connector.connect(
                host="localhost",
                port=3360,
                user="root",
                password="MyPassword1234",
                database="dockerdemo"
            )
            if connection.is_connected():
                #print("Successfully connected to MySQL database")
                
                # return connection
                
                cursor = connection.cursor()
                cursor.execute("select * from users;")
                record = cursor.fetchall()
                return jsonify(record)

        except mysql.connector.Error as e:
            print("Error while connecting to MySQL", e)
            time.sleep(3)
    
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)