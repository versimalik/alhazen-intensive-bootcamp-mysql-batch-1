-- Active: 1714482118434@@127.0.0.1@3306@contoh_constraint
CREATE TABLE users(
    id INT(10) PRIMARY KEY AUTO_INCREMENT,
    nama_depan VARCHAR(100) NOT NULL CHECK(LENGTH(nama_depan) > 3),
    nama_belakang VARCHAR(100),
    tempat_lahir VARCHAR(100) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    email VARCHAR(320) NOT NULL UNIQUE,
    nomor_telepon VARCHAR(20) NOT NULL UNIQUE,
    kebangsaan VARCHAR(100) DEFAULT 'Indonesia'
);

CREATE TABLE product (
	id INT(10),
	name VARCHAR(200) NOT NULL,
	brand VARCHAR(100) NOT NULL,
	price DOUBLE(10,2) NOT NULL,
	stock INT(10) NOT NULL DEFAULT 1,
    PRIMARY KEY (id),
    CHECK (LENGTH(name) >= 3)
);

DESCRIBE users;
DESCRIBE product;

INSERT INTO users
VALUES (1, "Reza", NULL, "Jakarta", "2000-01-01", "reza@gmail.com", "08123456789", "Indonesia");

-- data ini ditolak, karena duplicate id (PRIMARY KEY)
INSERT INTO users
VALUES (1, "Malik", NULL, "Jakarta", "2000-01-01", "malik@gmail.com", "08123987654", "Indonesia");

-- tidak perlu mendeskripsikan column yang tidak ingin diisi
INSERT INTO users (nama_depan, nama_belakang, tempat_lahir, tanggal_lahir, email, nomor_telepon)
VALUES ("Reza", NULL, "Surabaya", "2000-01-01", "reza2@gmail.com", "081234567890");

INSERT INTO users (nama_depan, nama_belakang, tempat_lahir, tanggal_lahir, email, nomor_telepon)
VALUES ("Jono", NULL, "Surabaya", "2000-01-01", "userbaru@gmail.com", "08123456");

INSERT INTO users (nama_depan, nama_belakang, tempat_lahir, tanggal_lahir, email, nomor_telepon, kebangsaan)
VALUES ("John", NULL, "Perth", "2000-01-01", "john@gmail.com", "0812345563231", "Australia");

SELECT * FROM users;

EXPLAIN product;

SHOW CREATE TABLE product;