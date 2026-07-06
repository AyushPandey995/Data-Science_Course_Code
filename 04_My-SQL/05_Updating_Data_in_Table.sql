use schooldb;

update Student set Grade = 'IX' where Grade = '11th';
select * from Student;

update Student set Grade = '11th' limit 5;
update Student set Grade = '12th' where grade <> "11th";
select * from Student;

update student set age = age+1 where grade = '12th' limit 3 ;

update student set age = age+1 where (grade = '11th') and (age = 18) limit 2;
select * from Student;