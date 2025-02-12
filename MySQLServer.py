"""Creating a bookstore database using a python script"""
import mysql.connector

print("Attempting Database connection.........")

try:
    mydb = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = "#benedictalovesme2",
        use_pure = True
    )

    if mydb.is_connected():
        print("Connection Successful ✅ ")
   

    mycursor = mydb.cursor()
    mycursor.execute('CREATE DATABASE IF NOT EXISTS alx_book_store;')
    print("Database 'alx_book_store' created successfully!")

except mysql.connector.DatabaseError:
    print("Database connection failed!!")
    # mydb.is_connected == False
    # print(mysql.connector.errors())

finally:
    mycursor.close()        #Always close te cursor first before the db
    mydb.close()


