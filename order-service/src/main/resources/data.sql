INSERT INTO orders (order_number, payment_number, date_created, total_amount, status, user_id) VALUES ('30b8da52-c5f1-4f6c-9099-86a1ff465d27', '8HU03993WS431134J', TO_TIMESTAMP('2024-01-15 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 27737.02, 'PLACED', 2);
INSERT INTO orders (order_number, payment_number, date_created, total_amount, status, user_id) VALUES ('6f736a6b-9e35-4743-b10e-8b6237f657bc', '1HDU40393WS43114J', TO_TIMESTAMP('2024-02-05 10:45:00', 'YYYY-MM-DD HH24:MI:SS'), 29392.6, 'PLACED', 2);

INSERT INTO orders (order_number, payment_number, date_created, total_amount, status, user_id) VALUES ('ab53c880-79b5-4f6b-bf9d-12a7b765c709', '3YU03993WS431134J', TO_TIMESTAMP('2024-01-15 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 754.88, 'DELIVERED', 2);

INSERT INTO orders (order_number, payment_number, date_created, total_amount, status, user_id) VALUES ('bce3b61d-6c81-4a5b-a45d-28d1d7992d5e', '8HU03993WS431134J', TO_TIMESTAMP('2024-01-20 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 754.88, 'COMPLETED', 2);
INSERT INTO orders (order_number, payment_number, date_created, total_amount, status, user_id) VALUES ('c91863b6-4499-4828-b7a7-5d7b47f1e3c1', '1HDU40393WS43114J', TO_TIMESTAMP('2024-02-10 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), 754.88, 'COMPLETED', 2);
INSERT INTO orders (order_number, payment_number, date_created, total_amount, status, user_id) VALUES ('a1f7e2fb-d43e-4be6-8b8a-03a78438af4b', '3DU03993WS43113J', TO_TIMESTAMP('2024-02-25 14:15:00', 'YYYY-MM-DD HH24:MI:SS'), 1930.6, 'COMPLETED', 2);

INSERT INTO order_item (quantity_purchased, product_id, order_id) VALUES (2, 45, 1);
INSERT INTO order_item (quantity_purchased, product_id, order_id) VALUES (3, 20, 1);
INSERT INTO order_item (quantity_purchased, product_id, order_id) VALUES (2, 4, 1);

INSERT INTO order_item (quantity_purchased, product_id, order_id) VALUES (1, 60, 2);
INSERT INTO order_item (quantity_purchased, product_id, order_id) VALUES (4, 10, 2);
INSERT INTO order_item (quantity_purchased, product_id, order_id) VALUES (5, 17, 2);

INSERT INTO order_item (quantity_purchased, product_id, order_id) VALUES (2, 25, 3);
INSERT INTO order_item (quantity_purchased, product_id, order_id) VALUES (3, 40, 3);
INSERT INTO order_item (quantity_purchased, product_id, order_id) VALUES (1, 55, 3);

INSERT INTO order_item (quantity_purchased, product_id, order_id) VALUES (2, 25, 4);
INSERT INTO order_item (quantity_purchased, product_id, order_id) VALUES (3, 40, 4);
INSERT INTO order_item (quantity_purchased, product_id, order_id) VALUES (1, 55, 4);

INSERT INTO order_item (quantity_purchased, product_id, order_id) VALUES (2, 25, 5);
INSERT INTO order_item (quantity_purchased, product_id, order_id) VALUES (3, 40, 5);
INSERT INTO order_item (quantity_purchased, product_id, order_id) VALUES (1, 55, 5);

INSERT INTO order_item (quantity_purchased, product_id, order_id) VALUES (2, 25, 6);
INSERT INTO order_item (quantity_purchased, product_id, order_id) VALUES (10, 40, 6);
INSERT INTO order_item (quantity_purchased, product_id, order_id) VALUES (1, 55, 6);