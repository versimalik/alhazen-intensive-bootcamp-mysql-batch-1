CREATE DATABASE tokoku_db;

USE tokoku_db;

CREATE TABLE users(
    id INT(10),
    nama_depan VARCHAR(100),
    nama_belakang VARCHAR(100),
    email VARCHAR(320),
    nomor_telepon VARCHAR(15)
);

SHOW TABLES;

DESCRIBE users;

SHOW CREATE TABLE users;

INSERT INTO users(id, nama_depan, nama_belakang, email, nomor_telepon)
    VALUES (1, "Andi", "Gunawan", "andi@email.com", "081234546789");

INSERT INTO users(id, nama_depan, nomor_telepon)
    VALUES (2, "Heru", "01234567799");

INSERT INTO users(id, nomor_telepon, nama_depan)
    VALUES (3, "098776655444", "Jaka");

INSERT INTO users
    VALUES (4, "Lala", "Fitria", "lafitria@email.com", "2143511829");

INSERT INTO users
    VALUES (5, "Joko", "Budi", "budi@email.com", "12345678"),
    (6, "Roni", "", "", "12345678"),
    (7, "Tomi", "", "tomi@email.com", "");

SELECT * FROM users;

SELECT id, nama_depan, nomor_telepon FROM users;

SELECT nama_depan, nomor_telepon, email FROM users;

SELECT id AS 'Kode Konsumen',
    nama_depan AS 'Nama Depan',
    nama_belakang AS 'Nama Belakang',
    email AS 'Alamat Surel',
    nomor_telepon AS 'Nomor HP'
FROM users;