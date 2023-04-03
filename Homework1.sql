/*
-- 2.Выведите название, производителя и цену для товаров, количество которых превышает 2

USE myfirstdb;
SELECT ProductName, Manufacturer, Price
FROM Homework
WHERE ProductCount > 2;
*/

/*
-- 3.  Выведите весь ассортимент товаров марки “Samsung”
USE myfirstdb;
SELECT *
FROM Homework
WHERE Manufacturer = 'Sumsung';
*/

/*
-- 4.
USE myfirstdb;
SELECT *
FROM Homework
WHERE Price * ProductCount > '100000' and Price * ProductCount < '145000';
*/

/*
-- 4.1
USE myfirstdb;
SELECT *
FROM Homework
WHERE ProductName LIKE 'iPhone%';
*/

/*
-- 4.2
USE myfirstdb;
SELECT *
FROM Homework
WHERE ProductName LIKE 'Galaxy%';
*/

/*
-- 4.3
USE myfirstdb;
SELECT *
FROM Homework
WHERE ProductName RLIKE '[0-9]';
*/

-- 4.4
USE myfirstdb;
SELECT *
FROM Homework
WHERE ProductName RLIKE '8';
