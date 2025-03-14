import mysql.connector
from mysql.connector import errorcode
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
            return connection
        except mysql.connector.Error as err:
            print(f"Error connecting to database: {err}")
            return None

# For changing, updating, or retriveing information, check if the item is present within the selected table first.

# GetDataFromTables
def getCustomerData(connection):
     """Reads ALL customers from the database."""
     cursor = connection.cursor()
     cursor.execute("SELECT * FROM customerInformation")
     rows = cursor.fetchall()
     cursor.close()
     return rows

def getCompanyData(connection):
     """Reads ALL company from the database."""
     cursor = connection.cursor()
     cursor.execute("select * from companyInfo")
     rows = cursor.fetchall()
     cursor.close()
     return rows

def getEventData(connection):
     """Get Email and Calendar Tasks"""
     cursor = connection.cursor()
     cursor.execute("SELECT calendarEvents, emailEvent FROM customerInformation")
     rows = cursor.fetchall()
     cursor.close()
     return rows
def getTotalTime(connection):
     """Get total elapsed time online"""
     cursor = connection.cursor()
     cursor.execute("SELECT elapsedTime FROM customerInformation")
     rows = cursor.fetchall()
     cursor.close()
     return rows

connection = connect_to_database("localhost", "AggieAdmin", "AggiePride", "companyDatabase")
if connection:
     events = getEventData(connection)
     print(events)

     time = getTotalTime(connection)
     print(time)

     connection.close()
else:
     print("Connection unsuccessful... :(")