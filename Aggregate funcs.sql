CREATE DATABASE Aggregate_funcs;
USE Aggregate_funcs;

CREATE TABLE Aggregate (
    id INT PRIMARY KEY,
    age INT,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE,
    followers INT DEFAULT 0,
    following INT,
    CONSTRAINT age_check CHECK (age >= 13)
);

INSERT INTO Aggregate
(id, age, name, email, followers, following)
VALUES
(1, 14, 'adam', 'adam@gmail.com', 123, 145),
(2, 15, 'bob', 'bob@gmail.com', 200, 200),
(3, 16, 'casey', 'casey@gmail.com', 300, 306),
(4, 17, 'Donald', 'donald@gmail.com', 200, 105);

INSERT INTO Aggregate
(id, age, name, email, followers, following)
VALUES
(5, 14, 'eve', 'eve@yahoo.com', 400, 145),
(6, 16, 'farah', 'farah@gmail.com', 10000, 1000);

SELECT max(followers)
FROM Aggregate;

SELECT  MAX(age)
FROM Aggregate;

SELECT  count(age)
FROM Aggregate
WHERE age=14;

SELECT  avg(age)
FROM Aggregate;

SELECT  sum(followers)
FROM Aggregate;

SELECT  sum(age)
FROM Aggregate;

