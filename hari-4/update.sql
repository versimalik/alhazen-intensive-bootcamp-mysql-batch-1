SELECT * FROM users2 LIMIT 10;

-- cara seperti ini adalah salah
-- karena tidak ada WHERE clause
-- UPDATE users2
--     SET jk = 'L';

SELECT * FROM users2 WHERE nama_depan = 'belinda';

UPDATE users2
    SET jk = 'P'
    WHERE nama_depan = 'belinda';

UPDATE users2
    SET tempat_lahir = 'Jakarta'
    WHERE nama_depan = 'belinda';

UPDATE users2
    SET tempat_lahir = 'Ambon'
    WHERE id = 769;

-- gunakan kondisi WHERE yang lebih spesifik
-- banyak WHERE belum tentu spesifik
UPDATE users2
    SET tempat_lahir = 'Jakarta'
    WHERE nama_depan = 'Ani'
    AND nama_belakang = 'Gunawan'
    AND tanggal_lahir = '2000-10-12';

SELECT * FROM users2 WHERE tempat_lahir = 'Semarang';

SELECT * FROM users2 WHERE id = 1659;

UPDATE users2
    SET jk = 'L',
    tempat_lahir = 'Bandung',
    tanggal_lahir = '1995-07-19'
    WHERE id = 1659;


UPDATE users2
    SET active = '0'
    WHERE tanggal_lahir > '2000-12-31';

-- UPDATE perlu ketelitian dan kehati-hatian

