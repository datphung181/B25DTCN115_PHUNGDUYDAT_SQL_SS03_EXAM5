USE sql_session2;


DROP TABLE CART_ITEMS;
CREATE TABLE CART_ITEMS (
    CartItemID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    ProductID INT,
    Quantity INT CHECK(Quantity>0),
    AddedDate DATETIME DEFAULT(CURRENT_TIMESTAMP()),
    UNIQUE(UserID,ProductID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- để ngắn người dùng nhập -5 thì ta nên thêm rằng buộc cho thuộc tính 
-- để ngăn 1 người dừng mua sp đã có ta cần thêm rằng buộc unique

INSERT INTO CART_ITEMS
VALUES(NULL, 1, 1, 20, DEFAULT);

SELECT CartItemID, UserID, ProductID, Quantity, AddedDate
FROM CART_ITEMS;

UPDATE CART_ITEMS
SET Quantity=5
WHERE CartItemID=1;

DELETE FROM CART_ITEMS
WHERE CartItemID=1;
