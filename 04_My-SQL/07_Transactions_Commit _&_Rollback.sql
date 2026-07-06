use school;
select * from students_2026;

alter table students_2026 add column Age int after Full_Name;
insert into students_2026 (Roll_No, Full_Name, Age, Admission_Date, Mobile_no, Stream) values
(1, 'Ayush Pandey', 20, '2006-12-07', 9114644, 'Maths' ),
(2, 'Khushi Bhise', 21, '2005-05-13', 9896444, 'Bio' );

select @@autocommit; -- Check Autocommit Status

set autocommit = 0; -- Disable Autocommit

start transaction;
update students_2026 set age = age + 1 where Roll_No = 1;
update students_2026 set age = age - 1 where Roll_No = 2;

commit -- Saves all changes in a transaction. After using commiy command rollback will not work as transaction is commited.

select * from students_2026;

start transaction;
update students_2026 set age = age + 1 where Roll_No = 1;
update students_2026 set age = age - 1 where Roll_No = 2;

rollback; -- The ROLLBACK statement is used to undo changes made in the current transaction. 
-- It is useful if something goes wrong or a condition is not met.


SET autocommit = 1; -- Enable Autocommit


