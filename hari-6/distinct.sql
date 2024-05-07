-- Active: 1714482118434@@127.0.0.1@3306@contoh_distinct_db
SELECT DISTINCT brand FROM product;

-- bukan ini tujuan penggunaan distinct
SELECT DISTINCT id FROM product;

SELECT DISTINCT email FROM users;

SELECT DISTINCT jk, tempat_lahir FROM users
    ORDER BY jk ASC;

SELECT DISTINCT tempat_lahir FROM users;

SELECT DISTINCT jk, tempat_lahir FROM users;

SELECT DISTINCT jk, tempat_lahir FROM users
    WHERE jk = 'L'
    ORDER BY jk ASC;

SELECT DISTINCT jk, tempat_lahir FROM users
    WHERE tempat_lahir = 'Tegal'

SELECT COUNT(*) AS 'Kelahiran Prabumulih' FROM users
    WHERE tempat_lahir = 'Prabumulih';