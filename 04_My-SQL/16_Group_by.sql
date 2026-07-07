use employee;
select * from employees;

-- The GROUP BY clause is used when you want to group rows that have the same values in specified columns.
-- It’s usually combined with aggregate functions like COUNT(), SUM(), AVG(), MAX(), or MIN().
select department, count(*) as Employee_on_department from employees  group by department;


select department, max(salary) as Highest_salary from employees group by department;

select department, max(salary) as Highest_salary from employees group by department having Highest_salary > 80000;
-- HAVING is like WHERE, but it works after the grouping is done.

select department, count(*) as Employee_on_department from employees  group by department having Employee_on_department > 7;


-- ROLLUP
-- The WITH ROLLUP clause in MySQL is used with GROUP BY to add summary rows (totals and subtotals) to your result set.
select department, count(*) as Employee_on_department from employees  group by department with rollup;

select department, avg(salary) as Employee_on_department from employees  group by department with rollup;

select department, max(salary) as Highest_salary from employees group by department with rollup;

select department, sum(salary) as Highest_salary from employees group by department with rollup;