-- Drop the Product table if it exists
DROP TABLE IF EXISTS user_tbl;

-- Table for Users
CREATE TABLE user_tbl (
    id BIGINT NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (username)
);

-- Inserting 30 users into the 'users' table with more realistic data
INSERT INTO user_tbl (username, password) VALUES
('john.doe', '$2a$10$EixZaYVK1fsbw1Zfbx3OXePaWxn96p36c/dvjxarYl2dV4G1C9HpO'),  -- bcrypt hashed password for 'password123'
('jane.smith', '$2a$10$5FUiC8zYgo.KEdrZaN5pWONZ0gflVHBJucIieLFw6FZJ0BrGE6Yvy'),  -- bcrypt hashed password for 'helloWorld!'
('alex.jones', '$2a$10$fL4X9F/CyANPqFvB/tVFeu.xhVlNOjR8l5ZVpuodfhQbUu1ztZmaS'),  -- bcrypt hashed password for 'mySecret2021'
('maria.hernandez', '$2a$10$O2NQfK5o68mxZj2uwJUXP.eoa2mRlYoH1c/7Qv6IpANf0fwN.BZ2S'),  -- bcrypt hashed password for 'superSecure'
('charlie.brown', '$2a$10$6JzOQJN1.cqnpQAN/kXwz.xjJQiF1cPbuKspH5qmyUTgXgVd.zTtq'),  -- bcrypt hashed password for 'Peanuts@2021'
('laura.james', '$2a$10$CeRXAlOfeGHbHq8W.xNUAOqfaMSdePQ6qXknQQuUsPvYFfBtM.o6q'),  -- bcrypt hashed password for 'laura!1234'
('michael.clark', '$2a$10$LOZHmpDsph8SYO6n1zKpAewJt0gMVJdUyQmF1HCKX8YehKwplzvDq'),  -- bcrypt hashed password for 'mike@pass'
('natalie.hall', '$2a$10$SyQmL8zIOTANy/dU9cq4t.mRfY.eUuHxIn.oP.HOjBBsXppBMzwtO'),  -- bcrypt hashed password for 'natalie2022'
('david.lopez', '$2a$10$HkAlA5dxSdjgHA1EVbFQmOHO7Q0esw0XxwP3UwC5IedcyR6DrlHZC'),  -- bcrypt hashed password for 'lopezPass789'
('emma.martin', '$2a$10$R7zx6tQDRr1CnAVBbEUs4uHNrDrw6qu5JzRytcH64qI/d4W5eAzfm'),  -- bcrypt hashed password for 'emmaLove@1'
('liam.jenkins', '$2a$10$zi/YG9wKi9w7Sh7H/kBZJ.9X4v7oI9RQx8zizygd8hb.oENdGF8Da'),  -- bcrypt hashed password for 'liamJ789'
('olivia.wilson', '$2a$10$dHgBntKV1w/oVfEMVz9t5.XyBuqqyA2eCfQdbmDPT8d67SZuCqGtG'),  -- bcrypt hashed password for 'Olivia*1988'
('noah.thomas', '$2a$10$A3sJIVn67jO4QviDq1yFaOCxYNcU1szm11QjTZbhpxTGwDh2pGTV6'),  -- bcrypt hashed password for 'NoahSecure!'
('ava.moore', '$2a$10$VqtGSwz6Ru14iBR3iH2w1OhUEHB9Yc5Z9vV6dq3pgt3wM3ZZK9fl2'),  -- bcrypt hashed password for 'ava123456'
('isabella.davis', '$2a$10$Buc8cnq56drWu58HJ3rmxOaZPL3g9zSBXIQpeT98QiD8FeMDDYWaa'),  -- bcrypt hashed password for 'bellaStrong@9'
('ethan.white', '$2a$10$0QfLyP8oByPIF1UJKlL6c.OKSKQ0BBRVkgbJdxyRAnG0/FZGnblz2'),  -- bcrypt hashed password for 'ethanW##2021'
('mia.rodriguez', '$2a$10$HAJgxC7dwHM9VWnI3RbtAOTk9VFHefYH1UtljxL5AYyQZsFttvQzG'),  -- bcrypt hashed password for 'miaRODR789'
('sophia.walker', '$2a$10$DHK1U/GKCGbfTTjIRLeHOuxPQfsuvWVEtp03t/Md1jnyPf0rz2V6K'),  -- bcrypt hashed password for 'Sophia.W@123'
('jack.jackson', '$2a$10$KgEWR/AQZKw2QlUkRj9HEepUUV/eyUzMH9/e9ctVfUVPZlSmK/dsy'),  -- bcrypt hashed password for 'jackJ@work'
('amelia.lee', '$2a$10$Vg9K2JMb4Ki/1lF0KYR.zOFE9.FLOjCrZWXHFv/mGbmJf6ZzNHzHC'),  -- bcrypt hashed password for 'amelia!pass'
('henry.hill', '$2a$10$OnXhdgE7LSbnGVurvRl3EuKLhkmz6kUYKdoUJqoe68jdv/Oj4g5Tm'),  -- bcrypt hashed password for 'henryHill2022'
('oliver.taylor', '$2a$10$6JvqDr9t2Bjf74oERcbgT.RHWL6B3kOZxk6YtPxbSDrPfrshFbAmu'),  -- bcrypt hashed password for 'Oli_1234'
('zoe.evans', '$2a$10$7bqSH/F6CdzjBOZhxAgEC..nQCRMQ50dFP5VDbHJUSxy9VEB9pJeu'),  -- bcrypt hashed password for 'Zoe$evans12'
('lucas.turner', '$2a$10$C9KLyEJ2h4Rx6/VvsZCZzO8SmD1thfH3vjSYKhuTm9SEIjgVuqcRu'),  -- bcrypt hashed password for 'lucasT2021'
('grace.baker', '$2a$10$ZUsUYJ/ZVVtHBKUpaU4IzuJbnoq.rqZwkhTVTBGcF/3X9V6tHzFfm'),  -- bcrypt hashed password for 'grace$$2000'
('benjamin.wood', '$2a$10$RoOPBRGbAF0.fzZzwzRjFuUlSOnkYrsnM57u.Vlt1TQ/ymHRPF1.a'),  -- bcrypt hashed password for 'benjamin789'
('emma.hughes', '$2a$10$ewJzlpNRwBRmv8rJ7veEje6S8NEraPExnWyoUY5Exv3iXEXRVmVii');  -- bcrypt hashed password for 'emmaH88!'
