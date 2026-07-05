use schooldb;

select * from student;

select * from student where Stream = "Science";

select ID, Name, Age from student where Stream = "Science"; 

select Name, Age, ID from student where Stream = "Science"; -- we can change the sequence of column

select * from student where age > 19 and Stream = 'Science-Bio';

select * from student where Age in (19, 20);

select * from student where Age > 19 and stream = "Science-Bio"
/*
Comparison Operators in MySQL 

Operator		Description					Example
=				Equals						WHERE age = 16
!=				Not equal to				WHERE grade != '12th'
<>				Not equal to (alternative)	WHERE grade <> '12th'
>				Greater than				WHERE age > 16
<				Less than					WHERE age < 17
>=				Greater than or equal to	WHERE age >= 16
<=				Less than or equal to		WHERE age <= 18
BETWEEN			Within a range (inclusive)	WHERE age BETWEEN 15 AND 17
IN				Matches any in a list		WHERE grade IN ('10th', '12th')
NOT IN			Excludes list items			WHERE grade NOT IN ('9th', '11th')
LIKE      		Pattern matching			WHERE name LIKE 'A%' (names starting with A)
NOT LIKE		Pattern not matching		WHERE name NOT LIKE '%a' (names not ending in a)
*/

insert into student (ID, Name, Grade, DOB) Values (11, "Shraddha", "11th", "2004-05-13");

select * from student where age is NULL;

select * from student order by age desc;-- Sort by age in descending order

select * from student order by age asc; -- Sort by age in ascending order

SELECT * FROM student ORDER BY name DESC limit 5; -- returns starting 5 rows
SELECT * FROM student ORDER BY name DESC limit 2,5; -- skips first two rows and returns starting 5 rows