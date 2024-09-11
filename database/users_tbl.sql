-- Drop the Product table if it exists
DROP TABLE IF EXISTS users;

-- Table for Users
CREATE TABLE users (
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    enabled tinyint NOT NULL,
    PRIMARY KEY (username),
    UNIQUE (username)
);

-- Inserting 'users' table
INSERT INTO users (username, password, enabled) VALUES
('abhishek', '{noop}password', 1),
('raushan', '{noop}password', 1),
('admin', '{noop}password', 1),
('abhi', '{noop}password', 1);