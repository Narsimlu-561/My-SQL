CREATE DATABASE Alter_Table;
USE Alter_Table;
CREATE TABLE alter_table (
    id INT PRIMARY KEY,
    age INT,
    name VARCHAR(30) NOT NULL,
    followers INT DEFAULT 0,
    following INT
);

INSERT INTO alter_table
(id, age, name, followers, following)
VALUES
(1, 14, 'adam', 123, 145),
(2, 15, 'bob', 200, 200),
(3, 16, 'casey', 300, 306),
(4, 17, 'Donald', 200, 105);

INSERT INTO alter_table
(id, name, following)
VALUES
(8, 'gemini', 145);

-- ADD COLUMN
ALTER TABLE alter_table
ADD COLUMN city VARCHAR(25) DEFAULT "Delhi";
SELECT * FROM alter_table;

-- DELETE/DROP COLUMN
ALTER TABLE alter_table
DROP COLUMN age;
SELECT * FROM alter_table;

-- Re-name table name
ALTER TABLE alter_table
RENAME TO instaUser;

-- Re-name table name TO original name
ALTER TABLE instaUser
RENAME TO alter_table;

ALTER TABLE alter_table
CHANGE COLUMN followers subscribers INT DEFAULT 0;
SELECT * FROM alter_table;

ALTER TABLE alter_table
MODIFY subscribers INT DEFAULT 5;

SELECT * FROM alter_table; 

TRUNCATE TABLE alter_table;
SELECT * FROM alter_table;

DROP TABLE alter_table;

-- CREATE TABLE post(
-- 	id INT PRIMARY KEY,
--     content VARCHAR(100),
--     user_id INT,
--     FOREIGN KEY (user_id) REFERENCES user(id)
-- );





