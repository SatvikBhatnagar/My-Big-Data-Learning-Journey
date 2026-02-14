-- create the database
CREATE DATABASE LibraryDb;

CREATE DATABASE ecommerceDb;

/*Best Practices :
1. Naming Conventions : Use meaningful and consistent names (e.g., LibraryDB, EcommerceDB).
2. Avoid Reserved Keywords : Ensure database names do not clash with MySQL reserved keywords.
3. Use Lowercase Letters : While MySQL is case-insensitive on Windows, it is case-sensitive 
on UNIX-based systems. Consistency avoids confusion. */

-- MySQL Create Table without constraints

USE LibraryDb;

CREATE TABLE Books(
	BookID int,
	Title varchar(25),
	Author varchar(50),
	Genre varchar(25),
	PublicationYear int
);

SHOW DATABASES;

select * from Books;

-- Insert data into table

insert into Books(BookID, Title, Author, Genre, PublicationYear) 
values 
	(1,'The One Thing', 'Garry Keller with Jay Papasan', 'Self-Improvement', 2013),
	(2, 'Can''t Hurt Me', 'David Goggins', 'Autobiography', 2018),
	(3, 'MEDITATIONS', 'Marcus Aurelius', 'Self-Improvement', 2013);

-- Verify data
select * from Books;

-- Drop the table
drop table Books;

-- Drop the database ecommerceDb
DROP DATABASE ecommerceDb;
