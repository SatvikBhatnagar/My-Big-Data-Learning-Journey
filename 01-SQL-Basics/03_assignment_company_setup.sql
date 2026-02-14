/* Assignment
Create Your Own Database and Tables:

Task : Create a database named CompanyDB and tables Employees and Departments without any constraints.
*/

CREATE DATABASE CompanyDB;

USE CompanyDB;

CREATE TABLE Employees(
	EmployeeID int,
	EmployeeName varchar(50),
	EmployeeDepartment varchar(25),
	EmployeeSalary int
);

INSERT INTO Employees
VALUES
	(1001, 'Satvik Bhatnagar', 'Engineering', 300000),
	(1002, 'Maulik Bhatnagar', 'Marketing', 250000)
;

SELECT * FROM Employees;

CREATE TABLE Departments(
	DepartmentName varchar(25),
	DepartmentHead varchar(50)
);

INSERT INTO Departments VALUES
	('Marketing', 'Vikas B.'),
	('Engineering', 'Akanksha B.');

SELECT * FROM Departments;