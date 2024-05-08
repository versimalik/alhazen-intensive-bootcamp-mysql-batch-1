-- Active: 1714482118434@@127.0.0.1@3306@contoh_fulltext_db
CREATE TABLE products (
  productCode varchar(15) NOT NULL,
  productName varchar(70) NOT NULL,
  productLine varchar(50) NOT NULL,
  productScale varchar(10) NOT NULL,
  productVendor varchar(50) NOT NULL,
  productDescription text NOT NULL,
  quantityInStock smallint(6) NOT NULL,
  buyPrice decimal(10,2) NOT NULL,
  MSRP decimal(10,2) NOT NULL,
  PRIMARY KEY (productCode),
  FULLTEXT product_search_fulltext (productName, productDescription, productVendor)
);

SHOW INDEX FROM products;

SELECT * FROM products
    WHERE MATCH(productName, productDescription, productVendor)
    AGAINST('bounty' IN NATURAL LANGUAGE MODE);

SELECT * FROM products
    WHERE MATCH(productName, productDescription, productVendor)
    AGAINST('+car -classic' IN BOOLEAN MODE);

SELECT * FROM products
    WHERE MATCH(productName, productDescription, productVendor)
    AGAINST('mayflower' WITH QUERY EXPANSION);