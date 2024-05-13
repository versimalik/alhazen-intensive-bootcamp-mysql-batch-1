SELECT COUNT(*) AS 'Jumlah Produk' FROM products;
SELECT COUNT(id) AS 'Jumlah Produk' FROM products;

SELECT COUNT(id) AS 'Jumlah Produk Garden'
    FROM products
    WHERE category = 'Garden';

-- ini bukan data yang valid
-- INI SALAH BESAR
SELECT name, price, COUNT(id) AS 'Jumlah Produk Yamaha'
    FROM products
    WHERE brand = 'Yamaha';

SELECT DISTINCT(brand) FROM products;
SELECT COUNT(DISTINCT(brand)) AS 'Jumlah Brand Produk'
    FROM products;

SELECT CONCAT(COUNT(id), " ", "Produk") AS 'Jumlah Produk Garden'
    FROM products
    WHERE category = 'Garden';

SELECT brand, GROUP_CONCAT(name)
    FROM products
    GROUP BY brand;

SELECT AVG(price) AS 'Rata Rata Harga Produk'
    FROM products;

SELECT AVG(price) AS 'Rata Rata Harga Produk Garden'
    FROM products
    WHERE category = 'Garden';

SELECT price FROM products
    ORDER BY price ASC
    LIMIT 1;

SELECT MIN(price) AS 'Harga Produk Terendah'
    FROM products;

SELECT MIN(price) AS 'Harga Produk Terendah Books'
    FROM products
    WHERE category = 'Books';

SELECT MAX(stock) AS 'Stok Terbanyak'
    FROM products;

SELECT MAX(stock) AS 'Stok Terbanyak Sports'
    FROM products
    WHERE category = 'Sports';

SELECT SUM(stock) AS 'Jumlah Stok Seluruh Barang'
    FROM products;

SELECT SUM(stock) AS 'Jumlah Stok Seluruh Barang Yamaha'
    FROM products
    WHERE brand = 'Yamaha';

SELECT category AS 'Kategori',
    COUNT(id) AS 'Jumlah Produk'
    FROM products
    GROUP BY category;

SELECT category AS 'Kategori',
    COUNT(id) AS 'Jumlah Produk',
    GROUP_CONCAT(name) AS 'Daftar Nama Produk'
    FROM products
    GROUP BY category;

SELECT category AS 'Kategori',
    COUNT(id) AS 'Jumlah Produk',
    GROUP_CONCAT(name) AS 'Daftar Nama Produk'
    FROM products
    GROUP BY category
    HAVING category = 'Garden';

SELECT category AS 'Kategori',
    COUNT(id) AS 'Jumlah Produk',
    GROUP_CONCAT(name SEPARATOR ", ") AS 'Daftar Nama Produk'
    FROM products
    GROUP BY category
    HAVING `Kategori` = 'Garden';

SELECT category AS 'Kategori',
    COUNT(id) AS 'Jumlah Produk',
    GROUP_CONCAT(name SEPARATOR ", ") AS 'Daftar Nama Produk'
    FROM products
    GROUP BY category
    HAVING `Jumlah Produk` > 100 ;

