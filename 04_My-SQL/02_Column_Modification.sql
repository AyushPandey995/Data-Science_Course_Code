Use school;

show tables;

select* from students;

rename table students to students_2026; -- used to rename table

show tables;

create table Passout_students(
	Roll_no int primary key,
    Name varchar(100) not null default "No Name",
    Stream varchar(20) not null,
    Email varchar(40) unique
);

show tables;

drop table passout_students; -- use to drop/remove table from the database

show tables;

describe students_2026; -- used to check the details of table

alter table students_2026 rename column Name to Full_Name; -- Used to rename name of column in a table

alter table students_2026 drop column Email; -- Used to drop coumn from the table

alter table students_2026 add column Mobile_No int;  -- Used to add colum from the table
alter table students_2026 add column Stream varchar(50) not null;

alter table students_2026 modify column Full_Name varchar(50) default 'Empty'; -- Used to modify datatype and constraints of column

alter table students_2026 modify column Full_Name varchar(50) after Stream; -- Change the place of the table
alter table students_2026 modify column Full_Name varchar(50) after Roll_No;

-- ALTER TABLE table_name MODIFY COLUMN column_name data_type FIRST; (Move the column to the first position.)