-- phân tích vấn đề: 
-- lí do chính là do update thiếu đi WHERE để xác định đúng vị trí mục thiết bị điện tử 
-- => gây ra lỗi khiến cho hệ thống thay đổi giá toàn bộ khiến thất thoát lợi nhuận


CREATE DATABASE products_database;
USE products_database;

CREATE TABLE PRODUCTS (
ProductID INT PRIMARY KEY,
ProductName VARCHAR(100),
Category VARCHAR(50),
OriginalPrice DECIMAL(18, 2)
);

INSERT INTO PRODUCTS (ProductID, ProductName, Category, OriginalPrice)
VALUES
(1, 'iPhone 15', 'Electronics', 20000000),
(2, 'Samsung Refrigerator', 'Electronics', 1500000),
(3, 'Water Spinach', 'Food', 10000),
(4, 'Filtered Fresh Milk 4', 'Food', 28000);

UPDATE PRODUCTS
SET OriginalPrice = OriginalPrice * 0.9 WHERE Category = 'Electronics';
SELECT * FROM products_database.products;
