-- DML - Data Mainuplation Language -- INSERT UPDATE DELETE

CREATE DATABASE CompanyDB;

USE CompanyDB;

CREATE TABLE Employees(
	EmployeeID int,
	FirstName varchar(25),
	LastName varchar(50),
	Email varchar(100),
	HireDate date,
	Salary Decimal(10,2) -- 10 digits before the decimal, 2 digits after the decimal
);

-- Insert some data in the table Employees

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, HireDate, Salary)
VALUES
    (1, 'Aarav', 'Patel', 'aarav.patel@example.com', '2023-01-15', 75000.00),
    (2, 'Sarah', 'Connor', 'sarah.connor@sky.net', '2022-05-20', 82500.50),
    (3, 'Vikram', 'Singh', 'vikram.singh@tech.co.in', '2021-11-30', 120000.00),
    (4, 'Emily', 'Blunt', 'emily.b@hollywood.com', '2024-02-10', 95000.00),
    (5, 'Rohan', 'Mehra', 'rohan.m@finance.org', '2020-08-14', 60000.75);

-- Retrieve the records

SELECT * FROM Employees;

INSERT into Employees values(6, 'Satvik', Null, 'satvik11@random.com', null, 234221.50);

SELECT * FROM Employees;

-- Retrieve records which are having null values

SELECT * FROM  Employees where LastName is NULL;

SELECT * FROM  Employees where LastName is NULL or HireDate is NULL;

-- MySQL Update Statement

UPDATE Employees
set LastName="Bh." where EmployeeID=6;

SELECT * FROM Employees;

-- Updating a single Record

UPDATE Employees set Salary = Salary + 10000 where EmployeeID=6;

-- Delete query - Remove records from a table

-- Deleting a single Record
DELETE FROM Employees 
	WHERE EmployeeID=1;
-- Deleting multiple Records
DELETE FROM Employees WHERE Salary < 100000;