create database employee;

use employee;
create table employees(
first_name varchar(30),
last_name varchar(30)
);

insert into employees(first_name, last_name) values
('Ayush', 'Pandey'),
('Khushi', 'Bhise'),
('Anush', 'Pandit'),
('Prathamesh', 'Khadase'),
('Gargi', 'Kudal'),
('Darshan', 'Godse'),
('Samay', 'Raina'),
('Rohan', 'Nil');

select * from employees;

select concat(first_name,' ', last_name) as full_name from employees; -- Used to concatinate multiple columns, Join strings together

select now(); -- return current date and time

select length(concat(first_name, last_name)) as len from employees; -- return length of string

select first_name, length(first_name) as len from employees;

alter table employees add column marks float;

select * from employees;

alter table employees add column id int auto_increment primary key;

insert into employees(marks) values
(98),
(99),
(87),
(81),
(89),
(92),
(94),
(88);

delete from employees where marks in (98, 99, 87, 81, 89, 92, 94, 88);

describe employees;

alter table employees modify column first_name varchar(30) after id, 
modify column last_name varchar(30) after first_name, 
modify column marks int after last_name;

select * from employees; 

alter table employees drop column marks;

create temporary table marks (
id int auto_increment primary key,
marks float not null);

insert into marks (marks) values
(98.55),
(99.89),
(87.11),
(81.54),
(89.1),
(92.22),
(94.44),
(88.34);

select * from marks;


select marks.id, employees.first_name, employees.last_name , marks.marks from marks join employees on employees.id = marks.id;

alter table employees add column marks float;
update employees join marks on employees.id = marks.id set employees.marks = marks.marks;

select * from employees;

UPDATE employees SET marks = 98.55 WHERE id = 1;
UPDATE employees SET marks = 99.89 WHERE id = 2;
UPDATE employees SET marks = 87.11 WHERE id = 3;
UPDATE employees SET marks = 81.54 WHERE id = 4;
UPDATE employees SET marks = 89.10 WHERE id = 5;
UPDATE employees SET marks = 92.22 WHERE id = 6;
UPDATE employees SET marks = 94.44 WHERE id = 7;
UPDATE employees SET marks = 88.34 WHERE id = 8;

select concat(first_name, " " , last_name), round(marks) as rounded_marks from employees; 

select round(12.5646, 2); --  Round numbers to a specific number of decimal places

select datediff('2026-06-01', '2026-11-13'); -- Difference between two dates 

select datediff(now(), '2024-11-13'); -- Difference between two dates 
select datediff(now(), '2024-11-13')/365; -- Difference between two dates 


select upper(concat(first_name, " ", last_name)) from employees; -- Used to Upper_case the string

select lower(concat(first_name, " ", last_name)) from employees; -- Used to lower_case the string

select replace('Ayuah', 'a', 's'); -- 	Replace part of a string

select trim('              ayush      '); -- 	Remove leading/trailing spaces


select monthname('1951-08-21'); -- Get month name from date

select year(now()); -- Extract year from date

/*
Comprehensive List of Useful MySQL Functions
Function	    	Description							Example Usage
CONCAT()			Combine multiple strings			CONCAT('A', 'B') → 'AB'
LENGTH()			Length of a string (in bytes)		LENGTH('Hi') → 2
CHAR_LENGTH()		Number of characters in a string	CHAR_LENGTH('हिंदी') → 5
LOWER()				Convert string to lowercase			LOWER('MySQL') → mysql
UPPER()				Convert string to uppercase			UPPER('hello') → HELLO
REPLACE()			Replace part of a string			REPLACE('abc', 'b', 'x') → axc
TRIM()				Remove leading/trailing spaces		TRIM('  hello  ') → hello
NOW()				Current date and time				NOW()
CURDATE()			Current date only					CURDATE()
CURTIME()			Current time only					CURTIME()
DATE()				Extract date from datetime			DATE(NOW())
MONTHNAME()			Get month name from date			MONTHNAME('2025-05-03') → May
YEAR()				Extract year from date				YEAR(NOW())
DAY()				Extract day of month				DAY('2025-05-03') → 3
DATEDIFF()			Days between two dates				DATEDIFF('2025-06-01', '2025-05-01')
ROUND()				Round to decimal places				ROUND(5.678, 2) → 5.68
FLOOR()				Round down to nearest whole number	FLOOR(5.9) → 5
CEIL()				Round up to nearest whole number	CEIL(5.1) → 6
ABS()				Absolute value						ABS(-10) → 10
MOD()				Get remainder						MOD(10, 3) → 1
RAND()				Random decimal between 0 and 1		RAND()
IFNULL()			Replace NULL with a default value	IFNULL(NULL, 'N/A') → N/A
COALESCE()			Return first non-NULL value in a list		COALESCE(NULL, '', 'Hello') → ''
COUNT()				Count rows							COUNT(*)
AVG()				Average of a numeric column			AVG(score)
SUM()				Total sum of values					SUM(score)
MIN()				Smallest value						MIN(score)
MAX()				Largest value						MAX(score)
*/