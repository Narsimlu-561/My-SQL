CREATE DATABASE Delete_Table;
USE Delete_Table;
CREATE TABLE delete_table (
    id INT PRIMARY KEY,
    age INT,
    name VARCHAR(30) NOT NULL,
    followers INT DEFAULT 0,
    following INT
);

INSERT INTO delete_table
(id, age, name, followers, following)
VALUES
(1, 14, 'adam', 123, 145),
(2, 15, 'bob', 200, 200),
(3, 16, 'casey', 300, 306),
(4, 17, 'Donald', 200, 105);

INSERT INTO delete_table
(id, age, name, followers, following)
VALUES
(5, 14, 'eve', 400, 145),
(6, 16, 'farah', 10000, 1000);

SET SQL_SAFE_UPDATES=0;

DELETE FROM delete_table
WHERE age=14;

SELECT * FROM delete_table;








