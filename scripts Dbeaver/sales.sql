create database sales;
use sales;

CREATE TABLE orders (
    id INT,
    customer_id INT,
    order_date DATE,
    customer_fname VARCHAR(100),
    customer_lname VARCHAR(100),
    customer_city VARCHAR(100),
    customer_state VARCHAR(100),
    amount DECIMAL(10, 2)
);

INSERT INTO orders (id,customer_id,order_date,customer_fname,customer_lname,customer_city,customer_state,amount) VALUES
	 (1,101,'2023-01-01','Alice','Smith','New York','NY',1500.00),
	 (2,102,'2023-01-02','Bob','Johnson','Los Angeles','CA',2500.50),
	 (3,103,'2023-01-03','Charlie','Williams','Chicago','IL',3000.75),
	 (4,104,'2023-01-04','David','Brown','Houston','TX',4000.00),
	 (5,105,'2023-01-05','Eva','Jones','Phoenix','AZ',5000.25),
	 (6,106,'2023-01-06','Frank','Garcia','San Francisco','CA',6000.50),
	 (7,107,'2023-01-07','Grace','Martinez','Seattle','WA',7000.75),
	 (8,108,'2023-01-08','Hank','Davis','Boston','MA',8000.00),
	 (9,109,'2023-01-09','Ivy','Rodriguez','Dallas','TX',9000.25),
	 (10,110,'2023-01-10','Jack','Wilson','Austin','TX',10000.50),
	 (11,111,'2023-01-11','Kelly','Anderson','San Diego','CA',11000.75),
	 (12,112,'2023-01-12','Liam','Thomas','San Jose','CA',12000.00),
	 (13,113,'2023-01-13','Mia','Taylor','Jacksonville','FL',13000.25),
	 (14,114,'2023-01-14','Noah','Moore','Indianapolis','IN',14000.50),
	 (15,115,'2023-01-15','Olivia','Jackson','San Francisco','CA',15000.75),
	 (16,116,'2023-01-16','Paul','Martin','Columbus','OH',16000.00),
	 (17,117,'2023-01-17','Quinn','Lee','Charlotte','NC',17000.25),
	 (18,118,'2023-01-18','Ryan','Harris','Detroit','MI',18000.50),
	 (19,119,'2023-01-19','Sophia','Clark','El Paso','TX',19000.75),
	 (20,120,'2023-01-20','Tom','Lewis','Memphis','TN',20000.00),
	 (21,121,'2023-01-21','Uma','Robinson','Baltimore','MD',21000.25),
	 (22,122,'2023-01-22','Vera','Walker','Milwaukee','WI',22000.50),
	 (23,123,'2023-01-23','Will','Hall','Albuquerque','NM',23000.75),
	 (24,124,'2023-01-24','Xena','Young','Tucson','AZ',24000.00),
	 (25,125,'2023-01-25','Yara','Allen','Fresno','CA',25000.25),
	 (26,126,'2023-01-26','Zoe','Sanchez','Sacramento','CA',26000.50),
	 (27,127,'2023-01-27','Adam','Wright','Long Beach','CA',27000.75),
	 (28,128,'2023-01-28','Bella','King','Kansas City','MO',28000.00),
	 (29,129,'2023-01-29','Cody','Scott','Mesa','AZ',29000.25),
	 (30,130,'2023-01-30','Diana','Green','Virginia Beach','VA',30000.50),
	 (31,131,'2023-01-31','Ethan','Baker','Atlanta','GA',31000.75),
	 (32,132,'2023-02-01','Fiona','Gonzalez','Colorado Springs','CO',32000.00),
	 (33,133,'2023-02-02','George','Nelson','Omaha','NE',33000.25),
	 (34,134,'2023-02-03','Holly','Carter','Raleigh','NC',34000.50),
	 (35,135,'2023-02-04','Iris','Mitchell','Miami','FL',35000.75),
	 (36,136,'2023-02-05','Jake','Perez','Cleveland','OH',36000.00),
	 (37,137,'2023-02-06','Kara','Roberts','Tulsa','OK',37000.25),
	 (38,138,'2023-02-07','Leo','Turner','Oakland','CA',38000.50),
	 (39,139,'2023-02-08','Maya','Phillips','Minneapolis','MN',39000.75),
	 (40,140,'2023-02-09','Nate','Campbell','Wichita','KS',40000.00);
	

