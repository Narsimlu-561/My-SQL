CREATE DATABASE College;
USE College;
CREATE TABLE Teacher(
	id INT PRIMARY KEY,
    name VARCHAR(30) ,
    subject VARCHAR(50),
    salary INT
);

INSERT INTO Teacher
(id,name,subject,salary)
VALUES
(23,"ajay","math",50000),
(47,"bharat","english",60000),
(18,"chetan","chemistry",45000),
(9,"divya","physics",75000);

SELECT * FROM Teacher;

-- a)
SELECT id,salary
FROM Teacher
WHERE salary >55000;

-- b)
ALTER TABLE Teacher
CHANGE COLUMN salary ctc INT DEFAULT 0;
SELECT * FROM Teacher;

-- c)
UPDATE Teacher
SET ctc=ctc + ctc * 0.25;
SELECT * FROM Teacher;

-- d)
ALTER TABLE Teacher
ADD COLUMN city VARCHAR(50) DEFAULT "Gurgaon";
SELECT * from Teacher;

ALTER TABLE Teacher
DROP COLUMN ctc;
SELECT * FROM Teacher;





