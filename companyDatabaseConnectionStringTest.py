import mysql.connector
from mysql.connector import errorcode
try:
    #Connection String, getting informtaion from an XML document
    connection = mysql.connector.connect(
        host ="localhost",
        user="AggieAdmin",
        password="AggiePride",
        database="companyDatabase"
    )
    #if there is an error
except mysql.connector.Error as err:
    if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print("Incorrect Username/Passowrd. Please submit again!")
    elif err.errno == errorcode.ER_BAD_DB_ERROR:
        print("Database not found. Create/Initalize in SQL first.")
    else:
        print("Cannot connect to database, check user's access.")
else:
    print("Connection Successful!!")
    connection.close()

    """connection function: any credentials can be used to create a connection to the database."""
    def connect_to_database(host, user, password, database):
        """Connects to the MySQL database."""
        try:
            connection = mysql.connector.connect(
                host=host,
                user=user,
                password=password,
                database=database
            )
            print("Connection Successful!!")
            connection.close()
        except mysql.connector.Error as err:
            print(f"Error connecting to database: {err}")
            return None
connection = connect_to_database("localhost", "AggieAdmin", "AggiePride", "companyDatabase")