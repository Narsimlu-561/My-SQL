CREATE DATABASE Operators;
USE Operators;

CREATE TABLE Logical (
    id INT PRIMARY KEY,
    age INT,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE,
    followers INT DEFAULT 0,
    following INT,
    CONSTRAINT age_check CHECK (age >= 13)
);
-- INSERT INTO clause
-- (id,age,name)
-- VALUES
-- (2,20);

INSERT INTO Logical
(id, age, name, email, followers, following)
VALUES
(1, 14, 'adam', 'adam@gmail.com', 123, 145),
(2, 15, 'bob', 'bob@gmail.com', 200, 200),
(3, 16, 'casey', 'casey@gmail.com', 300, 306),
(4, 17, 'Donald', 'donald@gmail.com', 200, 105);

-- AND operation
SELECT name,age,followers
FROM Logical
WHERE age >15 AND followers >200;

-- OR operation
SELECT name,age,followers
FROM Logical
WHERE age>15 OR followers>200;

-- OR operation
SELECT name,age,followers
FROM Logical
WHERE age BETWEEN 15 AND 17;

-- IN operation
SELECT name,followers,email
FROM Logical
WHERE email IN ("donald@gmail.com","casey@gmail.com","abc@gmail.com");

INSERT INTO Logical
(id, age, name, email, followers, following)
VALUES
(1, 14, 'eve', 'adam@gmail.com', 123, 145),
(2, 15, 'bob', 'bob@gmail.com', 200, 200);

SELECT name,followers,email
FROM Logical
WHERE email IN ("donald@gmail.com","casey@gmail.com","abc@gmail.com");

SELECT name,followers
FROM Logical
WHERE email NOT IN (14,16);

