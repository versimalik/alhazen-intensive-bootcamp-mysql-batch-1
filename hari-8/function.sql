SELECT CHAR(48);

SELECT CHAR(65, 66, 67)

SELECT CHAR(77, 97, 108, 105, 107)

SELECT CHARACTER_LENGTH("SELAMAT DATANG!")

SELECT LENGTH("$"), CHAR_LENGTH("$"), CHAR_LENGTH(123), LENGTH("€");

SELECT CONCAT("Reza"," ","Malik", " ", "Sedang", " ", "Belajar", " ", "MySQL");
SELECT CONCAT_WS("-", "mysql", "bootcamp", "batch", "1")

SELECT
    CONCAT_WS(" ", nama_depan, nama_belakang) AS 'Nama Lengkap',
    CONCAT(tempat_lahir, ", ", tanggal_lahir) AS 'Tempat, Tanggal Lahir'
    FROM users;

SELECT LOWER("MySQL"), UPPER("mysql");

SELECT
    CONCAT_WS(" ", nama_depan, nama_belakang) AS 'Nama Lengkap',
    CONCAT(LOWER(nama_belakang), LOWER(nama_depan)) AS 'Saran Username'
    FROM users;

SELECT LTRIM("      KIAN        "), RTRIM("      KIAN         "), TRIM("      KIAN      ");

ALTER TABLE users
    MODIFY COLUMN id INT(10) PRIMARY KEY AUTO_INCREMENT;

INSERT INTO users(nama_depan, nama_belakang, jk, tempat_lahir, tanggal_lahir, email, nomor_telepon)
VALUES(TRIM("         Reza      "), TRIM("Malik"), "L", "Jakarta", "1990-01-01", "email@malik.com", "0981232767846");

SELECT * FROM users WHERE nama_depan LIKE '%reza%';

SELECT 100.45, CEIL(100.45), CEILING(100.01);

SELECT 100.45, FLOOR(100.45), FLOOR(100.999999);

SELECT 100.45, ROUND(100.49), ROUND(100.50), ROUND(100.687, 2);

SELECT CURDATE(), CURRENT_DATE(), CURRENT_DATE;

ALTER TABLE users
    ADD COLUMN deleted_at DATETIME DEFAULT NULL;

UPDATE users
    SET deleted_at = CURDATE()
    WHERE id = 201;

SELECT * FROM users WHERE id = 201;

SELECT CURTIME(), CURRENT_TIME(), CURRENT_TIME;

UPDATE users
    SET deleted_at = CURTIME()
    WHERE id = 1;

SELECT CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP, NOW();

UPDATE users
    SET deleted_at = NOW()
    WHERE id = 1;

SELECT DATE('1990-01-01 00:50:00'), DATE(CURDATE()), DATE(NOW());

SELECT DATE_ADD(CURDATE(), INTERVAL 5 MONTH), DATE_SUB(CURDATE(), INTERVAL 5 YEAR);

SELECT DATEDIFF(CURDATE(), '1945-08-17');

SELECT TIMEDIFF('09:45:00', '09:47:58');

SELECT TIMESTAMPDIFF(MONTH, NOW(), '1945-08-17'), TIMESTAMPDIFF(YEAR, NOW(), '1990-12-04');

SELECT CONCAT_WS(" ", `nama_depan`, `nama_belakang`) AS "Nama Lengkap",
    CONCAT(
        TIMESTAMPDIFF(YEAR, tanggal_lahir, NOW()),
        " ",
        "tahun"
        ) AS 'Umur'
    FROM users
    ORDER BY tanggal_lahir ASC;

SELECT "Nama Saya adalah \"Reza Malik\"";
SELECT 'Nama Saya adalah \"Reza Malik\"';

SELECT COUNT(*) AS "Jumlah user" FROM users;