
use employee;
select concat(first_name, " " , last_name) as full_name, length(concat(first_name, last_name)) as name_length, round(marks) as rounded_marks from employees; 

create view roundoff_marks as select concat(first_name, " " , last_name) as full_name, length(concat(first_name, last_name)) as name_length, round(marks) as rounded_marks from employees; 

select* from roundoff_marks;
--  View in MySQL is like a virtual table. It doesn’t store data by itself but instead shows data from one or more tables through a saved SQL query.

select * from roundoff_marks where rounded_marks > 95;

-- to update view
create or replace view roundoff_marks as select concat(first_name, " " , last_name) as full_name, round(marks) as rounded_marks from employees; 
select* from roundoff_marks;

drop view roundoff_marks;
/*
Views don’t store data. If the underlying table changes, the view reflects that automatically.
Not all views are updatable. Simple views usually are (like those selecting from one table without grouping or joins), 
but complex ones may not allow INSERT, UPDATE, or DELETE.
*/