CREATE DATABASE student_management;

USE student_management;

CREATE TABLE students (
	student_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20)
);

CREATE TABLE courses (
	course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    duration_weeks INT 
);

CREATE TABLE enrollments (
	enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE 
);

INSERT INTO students VALUES
(1, 'John Mwangi', 'john@gmail.com', '0712345678'),
(2, 'Mary Wanjiku', 'mary@gmail.com', '0723456789'),
(3, 'Peter Otieno', 'peter@gmail.com', '0734567890');

INSERT INTO courses VALUES
(101, 'Introduction to MySQL', 6),
(102, 'Web Development Basics', 8),
(103, 'Python Programming', 10);

INSERT INTO enrollments VALUES
(1, 1, 101, '2025-01-10'),
(2, 1, 103, '2025-01-12'),
(3, 2, 101, '2025-01-11'),
(4, 3, 102, '2025-01-15');

- TASK 1
SELECT * FROM students;

- TASK 2
SELECT * FROM courses
ORDER BY duration_weeks ASC;

- TASK 3
SELECT * FROM enrollments
LIMIT 2;

- TASK 4
SELECT * FROM students
WHERE phone LIKE '07%';

- TASK 5
SELECT * FROM courses
WHERE duration_weeks > 6;

- TASK 6
UPDATE students
SET phone = '0799999999'
WHERE student_id = 2;

- TASK 7
DELETE FROM courses
WHERE course_id = 103;