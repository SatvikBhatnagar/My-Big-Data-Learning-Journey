-- Data maniuplation Exercises and Practise

USE CompanyDB;

CREATE TABLE customer_info(
	id int AUTO_INCREMENT PRIMARY KEY,
	first_name varchar(25), 
	last_name varchar(25),
	salary integer
);

-- insert into customer_info table
INSERT INTO customer_info(first_name, last_name, salary)
VALUES
("Satvik", "Bhatnagar", 250000),
("Maulik", "Bhatnagar", 200000),
("Roshan", "Singh Sodi", 100000),
("Babita", "Singh", NULL);

SELECT * FROM customer_info;

-- get the records of the customers who's salary is missing
SELECT first_name, last_name FROM customer_info WHERE salary is NULL;

SELECT first_name, last_name FROM customer_info WHERE salary is not NULL;

-- SQL update statement to replace NULL values
UPDATE customer_info SET salary=75000 WHERE id=4;

-- SQL delete statement
DELETE FROM customer_info WHERE id=3;
SELECT * FROM customer_info;

-- Alter MySQL

-- Add column
ALTER TABLE customer_info
ADD COLUMN dob date;

-- Add multiple column
ALTER TABLE customer_info
ADD COLUMN email varchar(50),
ADD COLUMN address varchar(50);

-- See the schema of the table
DESC customer_info;

-- Drop coolumn dob
ALTER TABLE customer_info DROP COLUMN dob;