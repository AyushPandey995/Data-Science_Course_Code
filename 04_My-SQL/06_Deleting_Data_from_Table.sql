use schooldb;

show tables;

select * from student;

insert into student (ID, Name, Grade, Stream) values (12, "Om", '12th', 'Science' )

delete from student where Age is null;

update student set age = null where id = 6

delete from student where age >19;

delete from student;

drop table student;

show tables;  