use employee;
-- A Stored Procedure is a saved block of SQL code that you can execute later by calling its name.
-- It allows you to group SQL statements and reuse them—just like a function in programming. 

delimiter //

create procedure employee_details()

begin
select * from employees;
select * from employees where department = 'Data Analytics';
select * from employees where department = 'Software Development';
select * from employees where department = 'DevOps';
select * from employees where department = 'Cloud Computing'; 

select * from employees where salary> (select avg(salary) from employees);
select * from employees as e  where salary> (select avg(salary) from employees where department = e.department);

select department , max(salary) as Highest_Salary from employees group by department;
end//

delimiter ;

call employee_details();

delimiter //

create procedure emp_by_id(in emp_id int)

begin
select * from employees where id = emp_id;
end//

delimiter ;

call emp_by_id(7)

DROP PROCEDURE IF EXISTS employee_details; -- Used to drop stored procedure
DROP PROCEDURE IF EXISTS emp_by_id;