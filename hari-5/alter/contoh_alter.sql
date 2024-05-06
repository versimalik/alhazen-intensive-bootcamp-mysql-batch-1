-- Active: 1714482118434@@127.0.0.1@3306@contoh_alter
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

CREATE TABLE orders(
    id INT(10),
    date DATE,
    user_id INT(10),
    total DECIMAL(10,2),
    discount DECIMAL(10,2),
    grand_total DECIMAL(10,2)
);


DESCRIBE users;
DESCRIBE product;
DESCRIBE orders;

ALTER TABLE users
    ADD COLUMN username VARCHAR(10) NOT NULL UNIQUE;

ALTER TABLE users
    ADD COLUMN jenis_kelamin INT(1) NOT NULL
    AFTER nama_belakang;

ALTER TABLE product
    ADD COLUMN color VARCHAR(20) NOT NULL AFTER brand,
    ADD COLUMN supplier VARCHAR(50) NOT NULL AFTER color;

ALTER TABLE users
    MODIFY COLUMN kebangsaan VARCHAR(100) NOT NULL;

ALTER TABLE users
    RENAME COLUMN jenis_kelamin to jk;

-- cara lain melakukan rename column
ALTER TABLE users CHANGE jenis_kelamin jk INT(1) NOT NULL;

ALTER TABLE product
    DROP COLUMN supplier;

ALTER TABLE orders
    ADD PRIMARY KEY(id);

ALTER TABLE product
    ADD CONSTRAINT UNIQUE(sku);

ALTER TABLE product
    ADD CONSTRAINT check_sku_length CHECK (sku >= 10)

ALTER TABLE product
    DROP CONSTRAINT PRIMARY KEY;

SHOW INDEXES FROM users;

ALTER TABLE users
    DROP INDEX kebangsaan;

ALTER TABLE product
    DROP CONSTRAINT check_sku_length;