CREATE DATABASE college;

CREATE DATABASE IF NOT EXISTS instagram;
USE instagram;
CREATE TABLE instagram(
	id INT,
    username VARCHAR(30),
    password VARCHAR(30)
);

INSERT INTO instagram
VALUES 
(100,"achiever","@abc"),
(102,"narsimlu","@561");

SELECT * FROM instagram;
DROP DATABASE IF EXISTS college;

SHOW DATABASES;
USE instagram;
SHOW TABLES;
