create database School; -- To Create database

SHOW DATABASES; -- Check the names of all databases

USE School; -- To Use the table

-- Crearting Table
CREATE TABLE Students(
	Roll_No int auto_increment primary key,
    Name varchar(100) not null default "No Name",
    Email varchar(40) unique,
    Admission_Date date
);

show tables; -- View All Tables present in the current database

select * from students; -- To see the content of table

/* 
*Explanation
id INT AUTO_INCREMENT PRIMARY KEY – A unique identifier for each student that auto-increments.
name VARCHAR(100) NOT NULL – Name must be provided.
age INT – Stores numeric values for age.
email VARCHAR(100) UNIQUE – Each email must be different.
admission_date DATE – Stores the date of admission.

*Commonly Used Data Types
INT – Whole numbers (e.g., age, quantity)
VARCHAR(n) – Variable-length string (e.g., names, emails)
TEXT – Long text strings (e.g., descriptions)
DATE – Stores date values (YYYY-MM-DD)
DATETIME – Stores date and time values
BOOLEAN – Stores TRUE or FALSE

*Common Constraints
PRIMARY KEY – Uniquely identifies each record
NOT NULL – Ensures the column cannot be left empty
UNIQUE – Ensures all values in a column are different
AUTO_INCREMENT – Automatically increases numeric values
DEFAULT – Sets a default value for the column
FOREIGN KEY – Enforces relationships between tables */