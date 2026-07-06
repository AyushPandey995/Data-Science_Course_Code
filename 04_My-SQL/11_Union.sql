-- Both SELECT statements must return the same number of columns.
-- The corresponding columns must have compatible data types.
-- UNION removes duplicate rows.
-- UNION ALL keeps duplicate rows.

use schooldb;

CREATE TABLE students_a (
    id INT,
    name VARCHAR(50)
);

INSERT INTO students_a VALUES
(1, 'Ayush'),
(2, 'Khushi'),
(3, 'Rohan'),
(4, 'Priya');

CREATE TABLE students_b (
    id INT,
    name VARCHAR(50)
);

INSERT INTO students_b VALUES
(3, 'Rohan'),
(4, 'Priya'),
(5, 'Anjali'),
(6, 'Vivek');

select id, name from students_a
union
select id, name from students_b;


SELECT * FROM students_a
UNION ALL
SELECT * FROM students_b;