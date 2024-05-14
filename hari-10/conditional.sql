-- Active: 1714482118434@@127.0.0.1@3306@contoh_conditional_db
SELECT * FROM employees;

SELECT first_name, hire_date
    FROM employees;

SELECT first_name,
    IF(hire_date <= '1998-12-31', 'Senior', 'Junior') AS 'Status'
FROM employees;

SELECT first_name,
    CASE
        WHEN gender = 'M' THEN 'Male'
        WHEN gender = 'F' THEN 'Female'
    END AS 'Gender'
FROM employees;

SELECT first_name,
    IFNULL(deleted_at, "Belum terhapus") AS "Dihapus pada"
FROM employees
ORDER BY deleted_at DESC;