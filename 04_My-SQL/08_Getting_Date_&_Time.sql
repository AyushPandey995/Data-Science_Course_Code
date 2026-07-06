select current_time(); -- Returns the current time in HH:MM:SS format.
select current_date(); -- Returns the current date in YYYY-MM-DD format.
select current_timestamp(); -- Returns the current date and time.
select now(); -- Returns the current date and time.

-- These are synonyms for NOW() and return the current date and time.
select localtime; 
select localtimestamp; 


use school;
select * from students_2026;

insert into students_2026 (Roll_No, Full_Name, Age, Admission_Date, Mobile_No, Stream) 
values (3, 'Tata', 1, now(), 8785446, 'Commerce');

