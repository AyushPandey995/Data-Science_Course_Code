use employee;
drop table employees;
create table employees(
id int primary key not null,
first_name varchar(20) not null,
last_name varchar(20) not null,
joining_date date not null,
department varchar (30) not null,
salary int not null
);

INSERT INTO employees
(id, first_name, last_name, department, joining_date, salary)
VALUES
(1, 'Aarav', 'Sharma', 'Software Development', '1998-03-12', 25000),
(2, 'Vivaan', 'Patel', 'Data Analytics', '1999-07-18', 28000),
(3, 'Aditya', 'Verma', 'Cloud Computing', '2000-01-25', 32000),
(4, 'Krishna', 'Gupta', 'DevOps', '2001-09-10', 35000),
(5, 'Arjun', 'Singh', 'Software Development', '2002-06-15', 30000),
(6, 'Rohan', 'Yadav', 'Data Analytics', '2003-11-20', 42000),
(7, 'Karan', 'Mishra', 'Cloud Computing', '2004-04-08', 38000),
(8, 'Rahul', 'Joshi', 'DevOps', '2005-08-27', 45000),
(9, 'Ayush', 'Pandey', 'Software Development', '2006-02-14', 40000),
(10, 'Siddharth', 'Dubey', 'Data Analytics', '2007-12-05', 50000),
(11, 'Ankit', 'Tiwari', 'Cloud Computing', '2008-05-19', 47000),
(12, 'Harsh', 'Chauhan', 'DevOps', '2009-10-30', 52000),
(13, 'Mohit', 'Agarwal', 'Software Development', '2010-03-11', 56000),
(14, 'Nikhil', 'Saxena', 'Data Analytics', '2011-07-07', 60000),
(15, 'Yash', 'Srivastava', 'Cloud Computing', '2012-09-29', 58000),
(16, 'Ritik', 'Jain', 'DevOps', '2013-01-16', 62000),
(17, 'Manish', 'Soni', 'Software Development', '2014-06-24', 65000),
(18, 'Deepak', 'Thakur', 'Data Analytics', '2015-04-13', 70000),
(19, 'Aman', 'Rathore', 'Cloud Computing', '2016-08-01', 75000),
(20, 'Saurabh', 'Choudhary', 'DevOps', '1998-12-22', 34000),
(21, 'Neha', 'Sharma', 'Software Development', '1999-05-09', 36000),
(22, 'Priya', 'Patel', 'Data Analytics', '2000-08-18', 39000),
(23, 'Sneha', 'Gupta', 'Cloud Computing', '2001-02-27', 41000),
(24, 'Pooja', 'Verma', 'DevOps', '2002-11-06', 44000),
(25, 'Anjali', 'Singh', 'Software Development', '2003-09-14', 46000),
(26, 'Riya', 'Yadav', 'Data Analytics', '2004-01-30', 49000),
(27, 'Kavya', 'Mishra', 'Cloud Computing', '2005-06-12', 53000),
(28, 'Isha', 'Joshi', 'DevOps', '2006-10-21', 55000),
(29, 'Simran', 'Pandey', 'Software Development', '2007-03-08', 59000),
(30, 'Muskan', 'Dubey', 'Data Analytics', '2008-12-17', 61000),
(31, 'Tanvi', 'Tiwari', 'Cloud Computing', '2009-07-25', 64000),
(32, 'Aditi', 'Chauhan', 'DevOps', '2010-04-04', 67000),
(33, 'Nandini', 'Agarwal', 'Software Development', '2011-11-11', 69000),
(34, 'Megha', 'Saxena', 'Data Analytics', '2012-08-03', 72000),
(35, 'Shruti', 'Srivastava', 'Cloud Computing', '2013-05-28', 74000),
(36, 'Payal', 'Jain', 'DevOps', '2014-09-16', 78000),
(37, 'Komal', 'Soni', 'Software Development', '2015-02-10', 81000),
(38, 'Sakshi', 'Thakur', 'Data Analytics', '2016-01-05', 85000),
(39, 'Divya', 'Rathore', 'Cloud Computing', '2001-12-19', 43000),
(40, 'Preeti', 'Choudhary', 'DevOps', '2005-04-26', 51000);

select * from employees;

select * from employees where salary > ( select avg(salary) from employees) + 10000; -- Subquery in the WHERE Clause

select * from employees e where salary > (select avg(salary) from employees where department = e.department) -- Correlated Subqueries
-- A correlated subquery depends on the outer query. It runs once for each row in the outer query.