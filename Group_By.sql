CREATE DATABASE Group_By_Clause;
USE Group_By_Clause;

CREATE TABLE Group_By (
    id INT PRIMARY KEY,
    age INT,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE,
    followers INT DEFAULT 0,
    following INT
);

INSERT INTO Group_By
(id, age, name, email, followers, following)
VALUES
(1, 14, 'adam', 'adam@gmail.com', 123, 145),
(2, 15, 'bob', 'bob@gmail.com', 200, 200),
(3, 16, 'casey', 'casey@gmail.com', 300, 306),
(4, 17, 'Donald', 'donald@gmail.com', 200, 105);

INSERT INTO Group_By
(id, age, name, email, followers, following)
VALUES
(5, 14, 'eve', 'eve@yahoo.com', 400, 145),
(6, 16, 'farah', 'farah@gmail.com', 10000, 1000);

SELECT age,max(followers)
FROM Group_By
GROUP BY age;

SELECT age,min(followers)
FROM Group_By
GROUP BY age;

-- it cannot select the columns
-- SELECT name,age,max(followers)
-- FROM Group_By
-- GROUP BY age;

-- HAVING clause
SELECT age,max(followers)
FROM Group_By 
GROUP BY age
HAVING max(followers)>200;

-- Clauses order 
-- SELECT columns
-- FROM table_name
-- WHERE condition
-- GROUP BY columns
-- HAVING condition
-- ORDER BY column(s) ASC/DESC
