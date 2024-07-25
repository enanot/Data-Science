import mysql.connector

mydb = mysql.connector.connect(
    host = "lab-db.cax30vpwie5j.us-east-1.rds.amazonaws.com",
    user = "admin",
    password = "#admin1234#",
    database = "cursods"
)
cursor = mydb.cursor()

#cursor.execute("create database enric")

#cursor.execute("create database cursods")

cursor.execute("create Table users(id int KEY, name VARCHAR(255), email VARCHAR(255))")

#cursor.execute("drop table users")

insert =("insert into users(id,name,email) values (%s,%s,%s)")

values = [
       
    ('1', 'user1', 'user1@mail.com'),
    ('2', 'user2', 'user2@mail.com'),
    ('3', 'user3', 'user3@mail.com')
]

cursor.executemany(insert,values)

mydb.commit()

cursor.execute("select * from users")

myresult = cursor.fetchall()

for x in myresult:
  print(x)