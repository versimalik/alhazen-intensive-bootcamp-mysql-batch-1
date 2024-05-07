-- Active: 1714482118434@@127.0.0.1@3306@contoh_delete
DELETE FROM product;
TRUNCATE product;
SELECT * FROM product;

DELETE FROM product
    WHERE id = 1490;

DELETE FROM product
    WHERE brand = 'FedEx';

-- hapus data dengan harga di bawah 300000
DELETE FROM product WHERE price < 300000;

ALTER TABLE product
    DROP COLUMN stock;


-- menambahkan kolom deleted
-- penanda apakah data tersebut sudah dihapus
ALTER TABLE product
    ADD COLUMN deleted INT(1) NOT NULL DEFAULT 0;

-- menambahkan kolom deleted
-- penanda apakah data tersebut sudah dihapus
-- dengan isian tanggal, agar lebih jelas kapan dihapus
ALTER TABLE product
    ADD COLUMN deleted_at DATE NULL;

-- melakukan soft delete, bukan dengan DELETE, namun dengan UPDATE
UPDATE product
    SET deleted = 1
    WHERE id = 1363;

-- melakukan soft delete, jika tersedia tombol deleted_at
-- dengan tipe data tanggal
UPDATE product
    SET deleted = 1, deleted_at = CURDATE()
    WHERE id = 1000;

-- menampilkan data yang tidak dihapus
SELECT * FROM product WHERE deleted = 0;
SELECT * FROM product WHERE deleted != 1;

-- menampilkan data yang tidak dihapus
SELECT * from product WHERE deleted_at IS NULL;

-- menampilkan data yang dihapus
SELECT * from product WHERE deleted_at IS NOT NULL;


