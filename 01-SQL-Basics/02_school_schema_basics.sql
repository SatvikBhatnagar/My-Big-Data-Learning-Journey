-- Create Database SchoolDb > Students{StudentId, FirstName, LastName}

CREATE DATABASE SchoolDb;

USE SchoolDb;

CREATE TABLE Students(
	StudentId int,
	FirstName varchar(25),
	LastName varchar(25),
	Email varchar(75),
	EnrollmentDate DATE
	);

CREATE TABLE Courses(
	CourseId int,
	CourseName varchar(50),
	Department varchar(25),
	Credits int
	);

--Insert sample data into Student table

INSERT INTO Students(StudentId, FirstName, LastName, Email, EnrollmentDate)
values
	(1, 'Satvik', 'Bhatnagar', 'satvikbhatnagar@gmail.com', '2019-07-24'),
	(2, 'Satvik', 'Bhatnagar Junior', 'satvikbhatnagarjunior@gmail.com', '2019-07-24');

--Check the records from the Students table

SELECT * FROM Students;

-- Insert sample data into Courses table

INSERT INTO Courses # Column names are optional if you provide values for ALL columns in the exact table order
VALUES
	(150, 'Quantum Mechanics', 'Department of Physics', 5),
	(171, 'Linear Algebra', 'Department of Mathematics', 3);

--Check the records from the Courses table

SELECT * FROM Courses;

DROP TABLE Courses;
DROP TABLE Students;

DROP DATABASE SchoolDb;