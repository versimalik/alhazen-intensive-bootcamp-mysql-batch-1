-- Active: 1714482118434@@127.0.0.1@3306@contoh_limit_db
SELECT * FROM users LIMIT 5;

SELECT * FROM users LIMIT 10 OFFSET 3;

SELECT * FROM users LIMIT 10;
SELECT * FROM users LIMIT 10 OFFSET 10;
SELECT * FROM users LIMIT 10 OFFSET 20;

-- sama dengan LIMIT 5
SELECT * FROM users LIMIT 0, 5;

-- sama dengan LIMIT 10 OFFSET 10
SELECT * FROM users LIMIT 10, 10;

SELECT * FROM users
    WHERE nama_depan LIKE 'z%'
    ORDER BY email ASC
    LIMIT 0,5;

SELECT * FROM users
    WHERE nama_depan LIKE 'z%'
    ORDER BY email ASC
    LIMIT 5,5;

SELECT * FROM users
    WHERE nama_depan LIKE 'z%'
    ORDER BY email ASC
    LIMIT 10,5;