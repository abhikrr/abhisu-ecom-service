-- Drop the Product table if it exists
DROP TABLE IF EXISTS role_tbl;

-- Table for Roles
CREATE TABLE role_tbl (
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);

-- Inserting roles into the 'role_tbl' table
INSERT INTO role_tbl (name) VALUES
('ROLE_USER'),  -- Regular user role
('ROLE_ADMIN'),  -- Admin role with elevated privileges
('ROLE_MODERATOR'),  -- Moderator role for managing content
('ROLE_GUEST'),  -- Guest role for temporary users
('ROLE_MANAGER'),  -- Manager role with access to certain admin features
('ROLE_SUPERVISOR'),  -- Supervisor role with authority over managers
('ROLE_SUPPORT'),  -- Support role for handling customer queries
('ROLE_DEVELOPER'),  -- Developer role for users involved in technical operations
('ROLE_ANALYST'),  -- Analyst role for reviewing data and reports
('ROLE_OPERATOR');  -- Operator role for maintaining daily operations
