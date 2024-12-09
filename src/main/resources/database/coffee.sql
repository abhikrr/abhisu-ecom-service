DROP TABLE IF EXISTS coffee ;

CREATE TABLE coffee  (
    coffee_id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    brand VARCHAR(20),
    origin VARCHAR(20),
    characteristics VARCHAR(30)
);