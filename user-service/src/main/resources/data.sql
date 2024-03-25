--users--
INSERT INTO users (username, gender, email, birthday, password, contact)
VALUES ('guest', NULL, NULL, NULL, NULL, NULL);
INSERT INTO users (username, gender, email, birthday, password, contact)
VALUES ('user1', 'Female', 'user1@example.com', TO_DATE('06-NOV-2023', 'DD-MON-YYYY'), 'password', '1234567890');

---addresses---
INSERT INTO address (street_address, city, zipcode, state, primary, user_id)
VALUES ('456 Oak Tree Avenue 1', 'Otherville', '67890', 'Johor', 1, 2);
INSERT INTO address (street_address, city, zipcode, state, primary, user_id)
VALUES ('456 Oak Tree Avenue 2', 'Otherville', '67890', 'Kedah', 0, 2);