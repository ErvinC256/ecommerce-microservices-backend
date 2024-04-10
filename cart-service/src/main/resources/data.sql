--carts--
INSERT INTO cart (last_updated, user_id)
VALUES (NULL, 1);
INSERT INTO cart (last_updated, user_id)
VALUES (NULL, 2);

--cart items--
INSERT INTO cart_item (quantity, cart_id, product_id)
VALUES (5, 2, 17);


