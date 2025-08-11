CREATE DATABASE college;
USE college;

CREATE TABLE students(
	roll_no INT,
    name VARCHAR(30),
    age INT
);
INSERT INTO students
values
(101,"aman",26),
(102,"shradha",25);
SELECT * FROM students
