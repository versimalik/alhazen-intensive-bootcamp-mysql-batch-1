-- Active: 1714482118434@@127.0.0.1@3306@contoh_index_db
EXPLAIN users;

SHOW INDEX FROM users;

ALTER TABLE users
    DROP INDEX nama_idx;

ALTER TABLE users
    ADD INDEX nama_idx (nama);

ALTER TABLE users
    ADD INDEX tempat_lahir_idx (tempat_lahir);

ALTER TABLE users
    ADD INDEX nama_ttl_idx (nama, tempat_lahir, tanggal_lahir);

TRUNCATE TABLE users;

SELECT * FROM users;

SELECT * FROM users WHERE nama = 'dr. Heru Farida';
SELECT * FROM users WHERE nama = 'dr. Heru Farida' AND tempat_lahir='Palu';
SELECT * FROM users
    WHERE nama = 'dr. Heru Farida'
    AND tempat_lahir='Palu'
    AND tanggal_lahir = '1989-09-12';