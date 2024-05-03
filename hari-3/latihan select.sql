-- Active: 1714482118434@@127.0.0.1@3306@contoh_select

DESCRIBE users;

SELECT * FROM users WHERE nama IS NULL;

SELECT * FROM users WHERE nama = "Adi";

SELECT * FROM users WHERE tempat_lahir = "Bekasi";

SELECT * FROM users WHERE tempat_lahir = "Surabaya";

SELECT * FROM users
    WHERE tempat_lahir = "Bekasi"
    AND
    tanggal_lahir < '1990-01-01'

SELECT * FROM users
    WHERE tempat_lahir = "Jakarta"
    OR tempat_lahir = "Tangerang"

-- WHERE nama diawali huruf a
SELECT * FROM users WHERE nama LIKE 'a%';

-- WHERE nama diakhiri huruf a
SELECT * FROM users WHERE nama LIKE '%a';

-- WHERE nama mengandung kata 'wati'
SELECT * FROM users WHERE nama LIKE '%WATI%';
SELECT * FROM users WHERE tempat_lahir LIKE '%ng%';

-- ORDER BY nama ASC
SELECT * FROM users
    WHERE tempat_lahir = "Bengkulu"
    ORDER BY nama ASC;

-- ORDER BY nama DESC
SELECT * FROM users
    WHERE tempat_lahir = "Bengkulu"
    ORDER BY nama DESC;

-- ORDER BY tanggal_lahir ASC
SELECT * FROM users
    WHERE tempat_lahir = "Bengkulu"
    ORDER BY tanggal_lahir ASC;

-- ini contoh syntax yang salah
-- SELECT * FROM users
--     ORDER BY tanggal_lahir ASC
--     WHERE tempat_lahir = "Bengkulu";

-- Secara otomatis akan di order secara ASC
SELECT * FROM users
    WHERE tempat_lahir = "Surabaya"
    ORDER BY id;

SELECT * FROM users
    ORDER BY tempat_lahir ASC;

SELECT * FROM users
    ORDER BY tempat_lahir ASC, id DESC;