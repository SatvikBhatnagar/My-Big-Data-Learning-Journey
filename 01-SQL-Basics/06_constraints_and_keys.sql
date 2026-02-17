/* Filename: 06_constraints_and_keys.sql
Description: Comprehensive guide to SQL Constraints (PK, FK, Unique, Check, Not Null).
*/

CREATE DATABASE libraryDB_Constraints;

USE libraryDB_Constraints;

-- ==========================================
-- 1. PRIMARY KEY
-- Uniquely identifies each record. No duplicates, No NULLs.
-- ==========================================
CREATE TABLE authors(
	AuthorID int PRIMARY KEY,
	FirstName varchar(25),
	LastName varchar(25),
	Email varchar(25)
);

INSERT INTO authors values
(1, 'Satvik', 'Bhatnagar', 'satvik@variable.com'),
(2, 'Satvik1', 'Bhatnagar1', 'satvik1@variable.com');

DESC authors;

SELECT * from authors WHERE AuthorID=1;

-- ==========================================
-- 2. FOREIGN KEY & CHECK CONSTRAINT
-- FK: Links to Authors table. CHECK: Ensures Year > 0.
-- ==========================================
CREATE TABLE books(
	BookId int Primary Key,
	Title varchar(50) NOT NULL,
	AuthorID int,
	PublicationYear int CHECK (PublicationYear > 0),
	Foreign Key (AuthorID) REFERENCES authors(AuthorID)
);

DESC books;

INSERT INTO books
values
(1, 'Get Your Stuff Together', 1, 2026);

SELECT * FROM books;

-- ------------------------------------------
-- ERROR DEMONSTRATION (Referential Integrity)
-- ------------------------------------------
-- This will fail because AuthorID 3 does not exist in Authors table.
-- INSERT INTO books values (2, 'Get Your Shit Together2', 3, 2026);
/* SQL Error [1452] [23000]: (conn=10)
Cannot add or update a child row: a foreign key constraint fails
(`libraryDB`.`books`, CONSTRAINT `1` FOREIGN KEY (`AuthorID`) REFERENCES `authors` (`AuthorID`))
*/

-- This works (AuthorID is NULL, which is allowed unless defined as NOT NULL)
INSERT INTO books values (3, 'Get Your Shit Together3', NULL, 2026);

-- ==========================================
-- 3. NOT NULL & UNIQUE
-- ==========================================
CREATE TABLE student(
	id int NOT NULL,
	first_name varchar(25),
	last_name varchar(25) NOT NULL, -- No two people can have the same Last Name
	age int
);

DESC student;

ALTER TABLE student
MODIFY age int NOT NULL;

-- add primary key as a constraint
ALTER TABLE student
MODIFY id int NOT NULL PRIMARY KEY;

-- drop a primary key constraint
ALTER TABLE student
DROP PRIMARY KEY;

DESC student;

CREATE TABLE person(
	id int AUTO_INCREMENT NOT NULL PRIMARY KEY,
	first_name varchar(25) NOT NULL,
	last_name varchar(25) UNIQUE,
	age int NOT NULL
);

DESC person;

INSERT INTO person VALUES (first_name, last_name, age) VALUES ('Satvik', 'Bhatnagar', 26);

-- ------------------------------------------
-- ERROR DEMONSTRATION (Unique Constraint)
-- ------------------------------------------
-- This will fail because 'Bhatnagar' already exists in LastName column.
-- INSERT INTO Person(FirstName, LastName, Age) VALUES ('Maulik', 'Bhatnagar', 25);

-- Gives error : SQL Error [1062] [23000]: (conn=10) Duplicate entry 'Bhatnagar' for key 'last_name'

