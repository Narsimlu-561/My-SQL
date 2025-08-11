CREATE DATABASE IF NOT EXISTS insta;
USE insta; -- Optional: ensures clean setup

CREATE TABLE user (
    id INT PRIMARY KEY,
    age INT,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE,
    followers INT DEFAULT 0,
    following INT,
    CONSTRAINT age_check CHECK (age >= 13)
);
INSERT INTO user
(id,age,name)
VALUES
(2,20);

INSERT INTO user 
(id, age, name, email, followers, following)
VALUES
(1, 14, 'adam', 'adam@gmail.com', 123, 145),
(2, 15, 'bob', 'bob@gmail.com', 200, 200),
(3, 16, 'casey', 'casey@gmail.com', 300, 306),
(4, 17, 'Donald', 'donald@gmail.com', 200, 105);
-- changed age to 16
SELECT id ,name,email FROM user;
SELECT * FROM user;

SELECT DISTINCT age FROM user;

-- CREATE TABLE post(
-- 	id INT,
--     content VARCHAR(100),
--     user_id INT,
--     FOREIGN KEY (user_id) REFERENCES user(id)
-- );
