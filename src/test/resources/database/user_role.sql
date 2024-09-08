-- Drop the Product table if it exists
DROP TABLE IF EXISTS user_role;

-- Join Table for User Roles
CREATE TABLE user_role (
    user_id BIGINT NOT NULL,
    role_id BIGINT NOT NULL,
    PRIMARY KEY (user_id, role_id),
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES user_tbl (id),
    CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role_tbl (id)
);

-- Inserting user-role associations into the 'user_roles' table

-- Assigning roles to users
INSERT INTO user_role (user_id, role_id) VALUES
(1, 1),  -- User ID 1 is assigned ROLE_USER
(1, 2),  -- User ID 1 is also assigned ROLE_ADMIN
(2, 1),  -- User ID 2 is assigned ROLE_USER
(3, 3),  -- User ID 3 is assigned ROLE_MODERATOR
(4, 4),  -- User ID 4 is assigned ROLE_GUEST
(5, 5),  -- User ID 5 is assigned ROLE_MANAGER
(6, 6),  -- User ID 6 is assigned ROLE_SUPERVISOR
(7, 7),  -- User ID 7 is assigned ROLE_SUPPORT
(8, 8),  -- User ID 8 is assigned ROLE_DEVELOPER
(9, 9),  -- User ID 9 is assigned ROLE_ANALYST
(10, 10), -- User ID 10 is assigned ROLE_OPERATOR
(11, 1),  -- User ID 11 is assigned ROLE_USER
(11, 3),  -- User ID 11 is also assigned ROLE_MODERATOR
(12, 2),  -- User ID 12 is assigned ROLE_ADMIN
(13, 4),  -- User ID 13 is assigned ROLE_GUEST
(14, 5),  -- User ID 14 is assigned ROLE_MANAGER
(15, 6),  -- User ID 15 is assigned ROLE_SUPERVISOR
(16, 7),  -- User ID 16 is assigned ROLE_SUPPORT
(17, 8),  -- User ID 17 is assigned ROLE_DEVELOPER
(18, 9),  -- User ID 18 is assigned ROLE_ANALYST
(19, 10), -- User ID 19 is assigned ROLE_OPERATOR
(20, 1),  -- User ID 20 is assigned ROLE_USER
(21, 2),  -- User ID 21 is assigned ROLE_ADMIN
(22, 3),  -- User ID 22 is assigned ROLE_MODERATOR
(23, 4),  -- User ID 23 is assigned ROLE_GUEST
(24, 5),  -- User ID 24 is assigned ROLE_MANAGER
(25, 6),  -- User ID 25 is assigned ROLE_SUPERVISOR
(26, 7),  -- User ID 26 is assigned ROLE_SUPPORT
(27, 8),  -- User ID 27 is assigned ROLE_DEVELOPER
(28, 9),  -- User ID 28 is assigned ROLE_ANALYST
(29, 10), -- User ID 29 is assigned ROLE_OPERATOR
(30, 1);  -- User ID 30 is assigned ROLE_USER
