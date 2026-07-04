create database schoolDB;

use schoolDB;

create table Student(
ID int primary key,
Name varchar(100),
Age int,
Grade varchar(50),
Stream varchar(100),
DOB date 
);

show tables;
describe Student;

insert into Student(ID, Name, Age, Grade, Stream, DOB) 
Values (01, "Ayush", 20, "11th", "Science", "2006-12-07");

select * from Student;

insert into Student(ID, Name, Age, Grade, Stream, DOB) 
values 
(2, 'Rohan', 19, '11th', 'Science-Maths', '2007-03-15'),
(3, 'Khushi', 20, '11th', 'Science-Bio', '2006-08-21'),
(4, 'Sneha', 19, '11th', 'Commerce', '2007-01-10'),
(5, 'Rahul', 20, '11th', 'Arts', '2006-11-18'),
(6, 'Ananya', 19, '11th', 'Agriculture', '2007-06-30'),
(7, 'Vikram', 20, '11th', 'Science', '2006-09-05'),
(8, 'Neha', 19, '11th', 'Science-Maths', '2007-04-12'),
(9, 'Arjun', 20, '11th', 'Commerce', '2006-02-27'),
(10, 'Kavya', 19, '11th', 'Science-Bio', '2007-10-09');

select * from student;