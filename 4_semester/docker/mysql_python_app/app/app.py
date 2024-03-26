import mysql.connector

def connect_to_mysql():
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
                print("Successfully connected to MySQL database")
                return connection
        except mysql.connector.Error as e:
            print("Error while connecting to MySQL", e)
            time.sleep(3)

def fetch_data(connection):
    cursor = connection.cursor()
    cursor.execute("select * from users;")
    record = cursor.fetchall()

    for x in record:
        print(x)

if __name__ == '__main__':
    conn = connect_to_mysql()
    fetch_data(conn)
    conn.close()