--carts--
INSERT INTO cart (user_id)
VALUES (1);
INSERT INTO cart (user_id)
VALUES (2);

--cart items--
INSERT INTO cart_item (quantity, cart_id, product_id)
VALUES (5, 2, 17);

--CREATE TABLE IF NOT EXISTS cart (
--    id BIGINT AUTO_INCREMENT PRIMARY KEY,
--    user_id BIGINT
--)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
--CREATE TABLE IF NOT EXISTS cart (
--    id BIGINT AUTO_INCREMENT PRIMARY KEY,
--    quantity BIGINT,
--    cart_id BIGINT,
--    product_id BIGINT,
--    FOREIGN KEY (cart_id) REFERENCES cart(id)
--)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


