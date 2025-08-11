CREATE DATABASE work;
USE work;
CREATE TABLE post(
	id INT,
    content VARCHAR(100),
    user_id INT
);
USE post;
INSERT INTO post
(id,content,user_id)
VALUES
(101,"i",15),
(102,"love",16),
(103,"coding",17);

SELECT * FROM post;

