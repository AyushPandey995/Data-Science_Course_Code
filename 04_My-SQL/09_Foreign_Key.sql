use schooldb;
show tables;


create table classes(
class_id int primary key not null,
class_name varchar(20) not null,
class_room_no varchar(10),
floor varchar(10)  
);

INSERT INTO classes (class_id, class_name, class_room_no, floor)
VALUES
(1, 'Nursery', '3', 'Ground'),
(2, 'LKG', '101', 'First'),
(3, 'UKG', '2', 'Ground'),
(4, '1st', '201', 'Second'),
(5, '2nd', '1', 'Ground'),
(6, '3rd', '102', 'First'),
(7, '4th', '301', 'Third'),
(8, '5th', '202', 'Second'),
(9, '6th', '4', 'Ground'),
(10, '7th', '302', 'Third'),
(11, '8th', '103', 'First'),
(12, '9th', '203', 'Second'),
(13, '10th', '303', 'Third'),
(14, '11th', '104', 'First'),
(15, '12th', '204', 'Second');

select * from classes;

create table students (
student_id int primary key not null,
student_name varchar(50) not null,
class_id int,
foreign key (class_id) references classes(class_id)
on update cascade -- If a class ID changes, it will update automatically in the students table.
on delete set null -- If a class is deleted, the related students will have class_id set to NULL.
);
-- ON DELETE CASCADE: Deletes the child rows when the parent row is deleted.
-- ON DELETE RESTRICT: Prevents deletion if any child rows exist.
-- ON DELETE NO ACTION: Same as RESTRICT in MySQL.
-- ON DELETE SET DEFAULT: Not supported in MySQL (but available in some other DBMSs).


INSERT INTO students (student_id, student_name, class_id)
VALUES
(1, 'Ayush Pandey', 14),
(2, 'Khushi Bhise', 14),
(3, 'Rohan Sharma', 15),
(4, 'Priya Verma', 13),
(5, 'Arjun Singh', 12),
(6, 'Neha Patel', 10),
(7, 'Rahul Gupta', 11),
(8, 'Sneha Mishra', 9),
(9, 'Karan Yadav', 8),
(10, 'Anjali Jain', 7),
(11, 'Vivek Tiwari', 6),
(12, 'Pooja Sahu', 5),
(13, 'Aditya Dubey', 4),
(14, 'Riya Kapoor', 3),
(15, 'Mohit Saxena', 2),
(16, 'Nisha Joshi', 1),
(17, 'Sahil Choudhary', 15),
(18, 'Meera Nair', 13),
(19, 'Aman Thakur', 11),
(20, 'Simran Kaur', 9),
(21, 'Harsh Agrawal', 7),
(22, 'Isha Sharma', 5),
(23, 'Deepak Kumar', 3),
(24, 'Tanvi Srivastava', 1),
(25, 'Yash Mehta', 12),
(26, 'Muskan Sharma', 10),
(27, 'Abhishek Raj', 8),
(28, 'Kritika Singh', 6),
(29, 'Dev Malhotra', 4),
(30, 'Sakshi Gupta', 2);

select * from students;

 