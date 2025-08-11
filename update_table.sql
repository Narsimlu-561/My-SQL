CREATE DATABASE Update_Table;
USE Update_Table;
CREATE TABLE update_table (
    id INT PRIMARY KEY,
    age INT,
    name VARCHAR(30) NOT NULL,
    followers INT DEFAULT 0,
    following INT
);

INSERT INTO update_table
(id, age, name, followers, following)
VALUES
(1, 14, 'adam', 123, 145),
(2, 15, 'bob', 200, 200),
(3, 16, 'casey', 300, 306),
(4, 17, 'Donald', 200, 105);

INSERT INTO update_table
(id, age, name, followers, following)
VALUES
(5, 14, 'eve', 400, 145),
(6, 16, 'farah', 10000, 1000);

SET SQL_SAFE_UPDATES =0;
UPDATE update_table
SET followers=600
WHERE age=16;

SELECT * FROM update_table;








