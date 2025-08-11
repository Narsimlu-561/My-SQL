CREATE DATABASE Clauses;
USE Clauses;
CREATE TABLE clause (
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

INSERT INTO clause
(id, age, name, email, followers, following)
VALUES
(1, 14, 'adam', 'adam@gmail.com', 123, 145),
(2, 15, 'bob', 'bob@gmail.com', 200, 200),
(3, 16, 'casey', 'casey@gmail.com', 300, 306),
(4, 17, 'Donald', 'donald@gmail.com', 200, 105);

SELECT name,followers
FROM clause
WHERE followers >=200;

SELECT name,age
FROM clause
WHERE age<16;

CREATE TABLE post(
	id INT PRIMARY KEY,
    content VARCHAR(100),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES user(id)
);



