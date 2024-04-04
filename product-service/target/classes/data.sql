--categories and subcategories--
INSERT INTO category (name) VALUES ('Laptops & Tablets');
INSERT INTO category (name) VALUES ('Electronics & Accessories');
INSERT INTO category (name) VALUES ('Printers');

INSERT INTO subcategory (name, category_id) VALUES ('Laptops', 1);
INSERT INTO subcategory (name, category_id) VALUES ('Tablets', 1);
INSERT INTO subcategory (name, category_id) VALUES ('Keyboards & Mice', 2);
INSERT INTO subcategory (name, category_id) VALUES ('Audio', 2);
INSERT INTO subcategory (name, category_id) VALUES ('Hard Drives, SSDs & Storage', 2);
INSERT INTO subcategory (name, category_id) VALUES ('Inkjet Printers', 3);
INSERT INTO subcategory (name, category_id) VALUES ('Laser Printers', 3);

--products (laptops)--
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('XPS 15 Laptop - Intel Core i9 Processor - 32GB RAM - 15.6-inch 4K OLED InfinityEdge Display - NVIDIA GeForce RTX 3060 Graphics - Windows 10 Pro', 'Dell', 7416.48, 'Experience the power of the XPS 15 Laptop. Features an Intel i9 processor, 32GB RAM, a 15.6-inch 4K OLED Display, and NVIDIA RTX 3060 Graphics. Runs on Windows 10 Pro.', 1, 154);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Inspiron 16 Laptop - Intel Core i7 Processor - 16GB RAM - 16-inch Full HD Display - NVIDIA GeForce GTX 1660 Ti - Windows 10 Home', 'Dell', 5643.98, 'Discover the power of the Inspiron 16 Laptop. Equipped with an Intel Core i7, 16GB RAM, and a 16-inch Full HD Display. Enjoy smooth graphics with NVIDIA GTX 1660 Ti and the user-friendly interface of Windows 10 Home.', 1, 199);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('HP Laptop 14 inch - Intel Core i5 - 8GB RAM - 256GB SSD - Full HD Display - Windows 10 Home', 'HP', 3279.99, 'HP Laptop with Intel i5, 8GB RAM, 14-inch Full HD Display, 256GB SSD, Windows 10 Home. Reliable and efficient.', 1, 102);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('HP ZBook Firefly - Intel Core i7 - 16GB RAM - 512GB NVMe SSD - 14-inch Full HD Display - NVIDIA Quadro Graphics', 'HP', 7928.18, 'HP ZBook Firefly with Intel i7, 16GB RAM, 14-inch Full HD Display, 512GB NVMe SSD, NVIDIA Quadro Graphics. High performance for professionals.', 1, 186);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('ThinkPad T14 Gen 4 (14 Intel) - Intel Core i7 Processor - 16GB RAM - 14-inch Full HD Display - Integrated Intel UHD Graphics - Windows 10 Pro', 'Lenovo', 5843.98, 'Featuring an Intel i7 processor, 16GB RAM, and a 14-inch Full HD Display. Comes with Integrated Intel UHD Graphics and runs on Windows 10 Pro.', 1, 145);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('IdeaPad Slim 1i (15, Gen 7) - Intel Celeron Processor - 4GB RAM - 15.6-inch HD Display - Integrated Intel UHD Graphics - Windows 10 Home', 'Lenovo', 1285.58, 'Featuring an Intel Celeron processor, 4GB RAM, and a 256GB SSD. Comes with a 15.6-inch HD Display and runs on Windows 10 Home.', 1, 178);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Surface Laptop Go 3 - Intel Core i5 Processor - 8GB RAM - 256GB SSD - 12.4-inch PixelSense Display - Windows 11', 'Microsoft', 2912.98, 'Powered by an Intel i5 processor, this device boasts a 12.4-inch PixelSense Display, 8GB RAM, and a 256GB SSD. Runs on Windows 11 for a smooth user experience.', 1, 132);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Surface Laptop Go 5 - Intel Core i7 Processor - 16GB RAM - 512GB SSD - 13.5-inch PixelSense Display - Windows 11', 'Microsoft', 5923.98, 'Equipped with a powerful Intel i7 processor, ample 16GB RAM, and a fast 512GB SSD. Enjoy stunning visuals on a 13.5-inch PixelSense Display. Runs on Windows 11.', 1, 159);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('MacBook Air 13-inch (M1 Chip) - Apple M1 Chip - 8GB RAM - 13.3-inch Retina Display - macOS Big Sur', 'Apple', 4295.58, 'Experience the sleek design of the MacBook Air 13-inch. Powered by the Apple M1 Chip, it offers 8GB RAM and a stunning 13.3" Retina Display. Runs on macOS Big Sur.', 1, 111);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('MacBook Air 15-inch (M2 Chip) - Apple M2 Chip - 16GB RAM - 15-inch Retina Display - macOS', 'Apple', 6224.98, 'Unleash your creativity with the MacBook Air 15-inch. Powered by the Apple M2 Chip and 16GB RAM, it offers a stunning 15-inch Retina Display. Runs on macOS for a seamless user experience.', 1, 167);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('MacBook Air 13-inch (M2 Chip) - Apple M2 Chip - 8GB RAM - 13.3-inch Retina Display - macOS', 'Apple', 5043.98, 'Explore the MacBook Air 13-inch with an Apple M2 Chip, 8GB RAM, and a 13.3-inch Retina Display. Runs on macOS for a smooth computing experience.', 1, 134);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('MacBook Pro 16-inch - Intel Core i9 Processor - 32GB RAM - 1TB SSD - 16-inch Retina Display - AMD Radeon Pro 5500M Graphics - macOS', 'Apple', 9764.98, 'MacBook Pro 16-inch features an Intel Core i9, 32GB RAM, and a 1TB SSD. It has a 16-inch Retina Display and AMD Radeon Pro 5500M Graphics. Runs on macOS.', 1, 198);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 1);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Processor', 'Intel Core i9', 1);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('RAM', '32GB', 1);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display', '15.6-inch 4K OLED InfinityEdge', 1);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Graphics', 'NVIDIA GeForce RTX 3060', 1);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Operating System', 'Windows 10 Pro', 1);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage', '1TB SSD', 1);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ports', '2x Thunderbolt 3, 1x USB-C 3.1, 1x SD Card Reader', 1);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless', 'Wi-Fi 6 AX1650, Bluetooth 5.1', 1);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', '86Wh Lithium-ion', 1);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '4.5 lbs', 1);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 1, 2);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Processor', 'Intel Core i7', 2);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('RAM', '16GB', 2);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display', '16-inch Full HD', 2);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Graphics', 'NVIDIA GeForce GTX 1660 Ti', 2);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Operating System', 'Windows 10 Home', 2);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage', '512GB SSD', 2);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ports', '1x HDMI 2.0, 2x USB 3.2, 1x Thunderbolt 3, 1x SD Card Reader', 2);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless', 'Wi-Fi 6 AX201, Bluetooth 5.1', 2);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', '56Wh Lithium-ion', 2);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '5.4 lbs', 2);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 3);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Processor', 'Intel Core i5', 3);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('RAM', '8GB', 3);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display', '14-inch Full HD', 3);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage', '256GB SSD', 3);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Operating System', 'Windows 10 Home', 3);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ports', '1x HDMI, 2x USB 3.1, 1x USB-C, 1x SD Card Reader', 3);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless', 'Wi-Fi 5, Bluetooth 4.2', 3);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', '41Wh Lithium-ion', 3);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '3.24 lbs', 3);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '12.76" x 8.86" x 0.71"', 3);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 4);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Processor', 'Intel Core i7', 4);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('RAM', '16GB', 4);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display', '14-inch Full HD', 4);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage', '512GB NVMe SSD', 4);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Graphics', 'NVIDIA Quadro', 4);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Operating System', 'Windows 10 Pro', 4);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ports', '2x USB-C with Thunderbolt, 2x USB 3.1, 1x HDMI 1.4', 4);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless', 'Wi-Fi 6 AX201, Bluetooth 5.0', 4);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', '53Wh Lithium-ion', 4);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '3.1 lbs', 4);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 1, 5);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Processor', 'Intel Core i7', 5);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('RAM', '16GB DDR4 3200MHz', 5);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display', '14-inch Full HD IPS', 5);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage', '512GB PCIe NVMe SSD', 5);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Graphics', 'Integrated Intel UHD Graphics', 5);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Operating System', 'Windows 10 Pro', 5);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ports', '2x USB 3.2 Gen 1, 2x USB-C 3.2 Gen 2, 1x HDMI 2.0', 5);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless', 'Wi-Fi 6 AX201, Bluetooth 5.2', 5);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', '50Wh Lithium-ion', 5);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '3.23 lbs', 5);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 6);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Processor', 'Intel Celeron', 6);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('RAM', '4GB', 6);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display', '15.6-inch HD', 6);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage', '256GB SSD', 6);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Graphics', 'Integrated Intel UHD Graphics', 6);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Operating System', 'Windows 10 Home', 6);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ports', '2x USB 3.1, 1x HDMI, 1x Headphone/Microphone Combo', 6);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless', 'Wi-Fi 5, Bluetooth 4.2', 6);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', '35Wh Lithium-ion', 6);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '3.74 lbs', 6);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (1, 0, 7);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Processor', 'Intel Core i5', 7);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('RAM', '8GB', 7);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display', '12.4-inch PixelSense', 7);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage', '256GB SSD', 7);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Operating System', 'Windows 11', 7);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ports', '1x USB-C, 1x USB-A, 3.5 mm headphone jack, 1x Surface Connect port', 7);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless', 'Wi-Fi 6: 802.11ax compatible, Bluetooth Wireless 5.0 technology', 7);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', 'Up to 13 hours of typical device usage', 7);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '2.45 lbs', 7);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '10.95” x 8.10” x 0.62”', 7);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (1, 1, 8);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Processor', 'Intel Core i7', 8);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('RAM', '16GB', 8);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display', '13.5-inch PixelSense', 8);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage', '512GB SSD', 8);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Operating System', 'Windows 11', 8);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ports', '1x USB-C, 1x USB-A, 3.5 mm headphone jack, 1x Surface Connect port', 8);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless', 'Wi-Fi 6: 802.11ax compatible, Bluetooth Wireless 5.0 technology', 8);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', 'Up to 13 hours of typical device usage', 8);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '2.45 lbs', 8);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '10.95” x 8.10” x 0.62”', 8);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 1, 9);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Processor', 'Apple M1 Chip', 9);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('RAM', '8GB', 9);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display', '13.3-inch Retina', 9);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage', '256GB SSD', 9);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Operating System', 'macOS Big Sur', 9);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ports', '2x Thunderbolt / USB 4 ports, 3.5 mm headphone jack', 9);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless', 'Wi-Fi 6: 802.11ax compatible, Bluetooth 5.0', 9);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', 'Up to 15 hours web browsing, Up to 18 hours Apple TV app movie playback', 9);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '2.8 lbs', 9);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '11.97" x 8.36" x 0.63"', 9);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 1, 10);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Processor', 'Apple M2 Chip', 10);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('RAM', '16GB', 10);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display', '15-inch Retina', 10);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage', '512GB SSD', 10);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Operating System', 'macOS', 10);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ports', '2x Thunderbolt / USB 4 ports, 3.5 mm headphone jack', 10);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless', 'Wi-Fi 6: 802.11ax compatible, Bluetooth 5.0', 10);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', 'Up to 17 hours web browsing, Up to 20 hours Apple TV app movie playback', 10);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '2.8 lbs', 10);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '14.09" x 9.68" x 0.63"', 10);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 11);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Processor', 'Apple M2 Chip', 11);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('RAM', '8GB', 11);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display', '13.3-inch Retina', 11);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage', '256GB SSD', 11);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Operating System', 'macOS', 11);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ports', '2x Thunderbolt / USB 4 ports, 3.5 mm headphone jack', 11);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless', 'Wi-Fi 6: 802.11ax compatible, Bluetooth 5.0', 11);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', 'Up to 15 hours web browsing, Up to 18 hours Apple TV app movie playback', 11);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '2.8 lbs', 11);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '11.97" x 8.36" x 0.63"', 11);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (1, 1, 12);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Processor', 'Intel Core i9', 12);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('RAM', '32GB', 12);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display', '16-inch Retina', 12);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage', '1TB SSD', 12);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Graphics', 'AMD Radeon Pro 5500M', 12);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Operating System', 'macOS', 12);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ports', '4x Thunderbolt 3 (USB-C) ports, 3.5 mm headphone jack', 12);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless', 'Wi-Fi 5: 802.11ac Wi-Fi wireless networking, Bluetooth 5.0', 12);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', 'Up to 11 hours web surfing', 12);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '4.3 lbs', 12);

--products (tablets)--
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Samsung Galaxy Tab S6 Lite 10.4 - 64GB Storage - Android OS - 10.4-inch Display', 'Samsung', 1430.18, 'Experience the versatility of the Samsung Galaxy Tab S6 Lite. Comes with 64GB storage, a 10.4-inch display, and powered by Android OS.', 2, 103);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Samsung Galaxy Tab S7+ - 12.4-inch Display - Android OS - 128GB Storage', 'Samsung', 4436.98, 'Experience the power and versatility of the Samsung Galaxy Tab S7+. Comes with 128GB storage, a 12.4-inch display, and powered by Android OS.', 2, 187);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Microsoft Surface Pro 9 (2022) - Intel Core i7 Processor - 16GB RAM - 256GB SSD - 13.3-inch PixelSense Display - Windows 11', 'Microsoft', 6564.18, 'Discover new levels of productivity with the Microsoft Surface Pro 9. Equipped with a powerful Intel Core i7 processor, 16GB RAM, and a 256GB SSD, it is designed to handle all your tasks with ease.', 2, 146);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('2021 Apple 11-inch iPad Pro - Apple M1 Chip - 8GB RAM - 128GB Storage - 11-inch Liquid Retina Display - iPadOS 14', 'Apple', 3323.98, 'Explore the 2021 Apple 11-inch iPad Pro. With Apple M1 Chip, 8GB RAM, 128GB storage, and 11-inch Liquid Retina Display, perfect for all your tasks. Runs on iPadOS 14.', 2, 179);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('SAMSUNG Galaxy Tab A7 Lite - 8.7-inch Display - Android OS - 32GB Storage', 'Samsung', 823.98, 'Compact yet powerful, the Samsung Galaxy Tab A7 Lite is your go-to device for streaming, studying, or just staying connected. With a slim metal body, 8.7-inch display, and Android OS, it is perfect for on-the-go entertainment.', 2, 133);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('SAMSUNG Galaxy Tab A8 - 10.5-inch Display - 64GB Storage - Android 12 - Octa-core Processor - Full HD Screen', 'Samsung', 953.18, 'Immerse yourself in the stunning visuals of the SAMSUNG Galaxy Tab A8. With a 10.5-inch Full HD screen, 64GB storage, Android 12, and an Octa-core Processor, it is your perfect entertainment companion.', 2, 160);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Samsung Galaxy Tab S9 FE+ - Qualcomm Snapdragon Processor - 6GB RAM - 128GB Storage - 12.4-inch AMOLED Display - Android 13', 'Samsung', 1888.50, 'Experience the seamless performance of the Samsung Galaxy Tab S9 FE+ with its Qualcomm Snapdragon Processor, 6GB RAM, and 128GB Storage. The 12.4-inch AMOLED Display ensures stunning visuals, while Android 13 provides a smooth user experience.', 2, 112);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Apple iPad Pro 11-inch - Apple M1 Chip - 8GB RAM - 128GB Storage - 11-inch Liquid Retina Display - iPadOS 15', 'Apple', 3323.98, 'Get more done with the Apple iPad Pro 11-inch. Powered by the Apple M1 Chip and 8GB RAM for smooth performance. Store your files on its 128GB storage. The 11-inch Liquid Retina Display offers stunning visuals, and it runs on iPadOS 15.', 2, 168);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Apple iPad Air - Apple A14 Bionic Chip - 64GB Storage - 10.9-inch Liquid Retina Display - iPadOS 15', 'Apple', 2721.18, 'Experience the sleek and powerful Apple iPad Air. Equipped with an Apple A14 Bionic Chip, 64GB storage, and a 10.9-inch Liquid Retina Display. It runs on iPadOS 15, offering a smooth user experience.', 2, 135);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Apple iPad Mini - Apple A15 Bionic Chip - 64GB Storage - 8.3-inch Liquid Retina Display - iPadOS 15', 'Apple', 2066.98, 'Embrace the compact yet powerful Apple iPad Mini. Equipped with an Apple A15 Bionic Chip, 64GB storage, and an 8.3-inch Liquid Retina Display. It runs on iPadOS 15, offering a smooth user experience.', 2, 199);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Apple iPad (10th generation) - Apple A14 Bionic Chip - 64GB Storage - 10.2-inch Retina Display - iPadOS 15', 'Apple', 2271.98, 'Experience the power of the Apple iPad (10th generation). Equipped with an Apple A14 Bionic Chip, 64GB storage, and a 10.2-inch Retina Display. It runs on iPadOS 15, offering a smooth user experience.', 2, 104);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Lenovo Tab M8 Gen 4 (8 MTK) - MediaTek Processor - 3GB RAM - 32GB Storage - 8-inch IPS Display - Android 11', 'Lenovo', 619.50, 'Experience the Lenovo Tab M8 Gen 4. Equipped with a MediaTek Processor, 3GB RAM, and 32GB storage. The 8-inch IPS Display ensures stunning visuals, while Android 11 provides a smooth user experience.', 2, 188);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 13);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Operating System', 'Android', 13);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display', '10.4-inch', 13);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage', '64GB', 13);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Processor', 'Exynos 9611', 13);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('RAM', '4GB', 13);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', '7040mAh', 13);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Camera', '8MP Rear, 5MP Front', 13);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '1.02 lbs', 13);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '9.63" x 6.07" x 0.28"', 13);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless', 'Wi-Fi 802.11 a/b/g/n/ac, Bluetooth 5.0', 13);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 1, 14);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Operating System', 'Android', 14);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display', '12.4-inch', 14);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage', '128GB', 14);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Processor', 'Qualcomm Snapdragon 865+', 14);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('RAM', '6GB', 14);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', '10090mAh', 14);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Camera', '13MP Rear, 8MP Front', 14);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '1.3 lbs', 14);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '11.22" x 7.28" x 0.22"', 14);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless', 'Wi-Fi 6, Bluetooth 5.0', 14);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (1, 0, 15);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Processor', 'Intel Core i7', 15);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('RAM', '16GB', 15);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display', '13.3-inch PixelSense', 15);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage', '256GB SSD', 15);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Operating System', 'Windows 11', 15);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ports', '1x USB-C, 1x USB-A, 3.5 mm headphone jack, 1x Surface Connect port', 15);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless', 'Wi-Fi 6: 802.11ax compatible, Bluetooth 5.0', 15);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', 'Up to 10.5 hours of typical device usage', 15);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '1.7 lbs', 15);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '11.5" x 7.9" x 0.33"', 15);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 16);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Processor', 'Apple M1 Chip', 16);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('RAM', '8GB', 16);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display', '11-inch Liquid Retina', 16);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage', '128GB', 16);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Operating System', 'iPadOS 14', 16);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ports', 'USB-C with support for Thunderbolt and USB 4', 16);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless', 'Wi-Fi 6 (802.11ax); simultaneous dual band (2.4GHz and 5GHz); Bluetooth 5.0', 16);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', 'Built‐in 28.65‐watt‐hour rechargeable lithium‐polymer battery', 16);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '1.03 pounds (468 grams)', 16);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '9.74" x 7.02" x 0.23"', 16);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 17);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Operating System', 'Android', 17);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display', '8.7-inch', 17);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage', '32GB', 17);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Processor', 'MediaTek MT8768T Helio P22T', 17);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('RAM', '3GB', 17);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', '5100mAh', 17);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Camera', '8MP Rear, 2MP Front', 17);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.81 lbs', 17);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '8.37" x 4.91" x 0.31"', 17);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless', 'Wi-Fi 802.11 a/b/g/n/ac, Bluetooth 5.0', 17);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 18);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Operating System', 'Android 12', 18);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display', '10.5-inch Full HD', 18);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage', '64GB', 18);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Processor', 'Octa-core', 18);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('RAM', '3GB', 18);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', '7040mAh', 18);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Camera', '8MP Rear, 2MP Front', 18);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '1.05 lbs', 18);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '9.75" x 6.20" x 0.25"', 18);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless', 'Wi-Fi 802.11 a/b/g/n/ac, Bluetooth 5.0', 18);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 1, 19);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Processor', 'Qualcomm Snapdragon', 19);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('RAM', '6GB', 19);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display', '12.4-inch AMOLED', 19);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage', '128GB', 19);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Operating System', 'Android 13', 19);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ports', 'USB-C, 3.5 mm headphone jack', 19);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless', 'Wi-Fi 802.11 a/b/g/n/ac, Bluetooth 5.0', 19);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', '7040mAh', 19);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '1.3 lbs', 19);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '9.99" x 6.51" x 0.25"', 19);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 20);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Processor', 'Apple M1 Chip', 20);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('RAM', '8GB', 20);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display', '11-inch Liquid Retina', 20);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage', '128GB', 20);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Operating System', 'iPadOS 15', 20);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ports', 'USB-C with support for Thunderbolt and USB 4', 20);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless', 'Wi-Fi 6 (802.11ax); simultaneous dual band (2.4GHz and 5GHz); Bluetooth 5.0', 20);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', 'Built‐in 28.65‐watt‐hour rechargeable lithium‐polymer battery', 20);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '1.04 pounds (468 grams)', 20);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '9.74" x 7.02" x 0.23"', 20);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 1, 21);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Processor', 'Apple A14 Bionic Chip', 21);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage', '64GB', 21);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display', '10.9-inch Liquid Retina', 21);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Operating System', 'iPadOS 15', 21);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ports', 'USB-C with support for Thunderbolt and USB 4', 21);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless', 'Wi-Fi 6 (802.11ax); simultaneous dual band (2.4GHz and 5GHz); Bluetooth 5.0', 21);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', 'Built‐in 28.6‐watt‐hour rechargeable lithium‐polymer battery', 21);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '1.0 pound (458 grams)', 21);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '9.74" x 7.02" x 0.24"', 21);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (1, 1, 22);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Processor', 'Apple A15 Bionic Chip', 22);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage', '64GB', 22);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display', '8.3-inch Liquid Retina', 22);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Operating System', 'iPadOS 15', 22);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ports', 'USB-C with support for Thunderbolt and USB 4', 22);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless', 'Wi-Fi 6 (802.11ax); simultaneous dual band (2.4GHz and 5GHz); Bluetooth 5.0', 22);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', 'Built‐in 19.3‐watt‐hour rechargeable lithium‐polymer battery', 22);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.65 pound (293 grams)', 22);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '7.69" x 5.3" x 0.25"', 22);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 23);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Processor', 'Apple A14 Bionic Chip', 23);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage', '64GB', 23);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display', '10.2-inch Retina', 23);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Operating System', 'iPadOS 15', 23);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ports', 'Lightning connector, 3.5 mm headphone jack', 23);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless', 'Wi-Fi 802.11a/b/g/n/ac; dual band (2.4GHz and 5GHz); Bluetooth 4.2', 23);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', 'Built‐in 32.4‐watt‐hour rechargeable lithium‐polymer battery', 23);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '1.08 pounds (490 grams)', 23);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '9.8" x 6.8" x 0.29"', 23);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 1, 24);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Processor', 'MediaTek', 24);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('RAM', '3GB', 24);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display', '8-inch IPS', 24);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage', '32GB', 24);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Operating System', 'Android 11', 24);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ports', 'Micro USB, 3.5 mm Audio Jack', 24);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless', 'Wi-Fi 802.11 a/b/g/n/ac, Bluetooth 5.0', 24);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', '5000mAh', 24);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.67 lbs', 24);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '7.8" x 4.8" x 0.32"', 24);

--products(keyboards & mice)--
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Black Wireless Mouse-WM126 - 2.4GHz Wireless Connectivity - Optical Sensor - Ambidextrous Design', 'Dell', 92.19, 'Experience the convenience of wireless connectivity with the Black Wireless Mouse-WM126 from Dell. It offers 2.4GHz wireless connectivity, an optical sensor, and an ambidextrous design for comfortable use.', 3, 147);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Dell Mobile Pro Wireless Mouse - MS5120W - 2.4GHz Wireless Connectivity - Optical Sensor - 6 Buttons - Ambidextrous Design', 'Dell', 138.29, 'Navigate with ease using the Dell Mobile Pro Wireless Mouse - MS5120W. It features 2.4GHz wireless connectivity, an optical sensor, and six buttons. Its ambidextrous design ensures comfortable use for both right and left-handed users.', 3, 180);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Logitech K400 Plus - Wireless Connectivity (2.4GHz) - Built-in Touchpad - Media Control Keys - Compact Design', 'Logitech', 103.74, 'Enjoy seamless control of your PC-to-TV entertainment with the Logitech K400 Plus. It features wireless connectivity (2.4GHz), a built-in touchpad, media control keys, and a compact design for easy navigation.', 3, 134);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Logitech Lift Vertical Ergonomic Mouse - Wired USB Connectivity - Vertical Design - Optical Sensor - Programmable Buttons', 'Logitech', 216.53, 'Logitech Lift Vertical Ergonomic Mouse offers a unique vertical design with wired USB connectivity. It features an optical sensor and programmable buttons for personalized use.', 3, 161);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Logitech M170 Wireless Mouse - Wireless Connectivity (2.4GHz) - Optical Sensor - 3 Buttons', 'Logitech', 68.69, 'Enjoy the freedom of wireless connectivity with the Logitech M170 Wireless Mouse. It features a 2.4GHz wireless connection, an optical sensor, and three buttons for easy navigation.', 3, 113);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('PEBBLE 2 COMBO - Wireless Connectivity (2.4GHz or Bluetooth) - Optical Sensor - Compact and Portable Design - Mouse and Keyboard Combo', 'Logitech', 251.93, 'Experience the convenience of wireless connectivity with the PEBBLE 2 COMBO. It offers 2.4GHz or Bluetooth wireless connectivity, an optical sensor, and a compact and portable design for easy navigation.', 3, 169);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('MK345 COMFORT WIRELESS KEYBOARD AND MOUSE COMBO - 2.4GHz Wireless Connectivity - Full-Size Keyboard - Long Battery Life', 'Logitech', 144.34, 'Enjoy the comfort of the MK345 COMFORT WIRELESS KEYBOARD AND MOUSE COMBO from Logitech. It offers 2.4GHz wireless connectivity, a full-size keyboard, and long battery life for easy navigation.', 3, 136);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('MK850 PERFORMANCE - Bluetooth and 2.4GHz Wireless Connectivity - Full-Size Keyboard - Precision Mouse - Multi-Device Switching', 'Logitech', 405.89, 'Experience the comfort and productivity of the MK850 PERFORMANCE. It offers Bluetooth and 2.4GHz wireless connectivity, a full-size keyboard, precision mouse, and multi-device switching.', 3, 200);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Dell Wireless Keyboard and Mouse - KM3322W - Wireless Connectivity (2.4GHz) - Full-Size Keyboard - Optical Sensor Mouse - Long Battery Life', 'Dell', 448.07, 'Improve your day-to-day productivity with the Dell Wireless Keyboard and Mouse - KM3322W. It offers 2.4GHz wireless connectivity, a full-size keyboard, an optical sensor mouse, and long battery life.', 3, 105);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Dell Laser Wired Mouse - MS3220 - Wired USB Connectivity - Laser Sensor - Ambidextrous Design', 'Dell', 156.67, 'Experience precision with the Dell Laser Wired Mouse - MS3220. It offers wired USB connectivity, a laser sensor, and an ambidextrous design for comfortable use.', 3, 189);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Magic Mouse - Black Multi-Touch Surface - Bluetooth Connectivity - Multi-Touch Gestures - Rechargeable', 'Apple', 416.07, 'Experience the smooth navigation of the Magic Mouse from Apple. It offers Bluetooth connectivity, a Black Multi-Touch Surface, Multi-Touch Gestures, and is rechargeable.', 3, 148);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('HP Z3700 Dual Wireless Mouse Black - Wireless Connectivity (2.4GHz and Bluetooth) - Optical Sensor - Slim and Portable Design', 'HP', 144.34, 'Experience the convenience of wireless connectivity with the HP Z3700 Dual Wireless Mouse. It offers 2.4GHz and Bluetooth wireless connectivity, an optical sensor, and a slim and portable design for easy navigation.', 3, 181);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 25);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', '2.4GHz Wireless', 25);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Sensor', 'Optical', 25);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Design', 'Ambidextrous', 25);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Key Switches', 'Mechanical', 25);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Key Layout', 'QWERTY', 25);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Backlight', 'Yes', 25);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('DPI/CPI', '800', 25);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery Life', '12 months', 25);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.3 lbs', 25);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '4.5" x 2.4" x 1.3"', 25);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 26);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', '2.4GHz Wireless', 26);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Sensor', 'Optical', 26);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Design', 'Ambidextrous', 26);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Buttons', '6', 26);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery Life', '12 months', 26);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.3 lbs', 26);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '4.5" x 2.4" x 1.3"', 26);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color', 'Black', 26);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('DPI/CPI', '800', 26);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Key Layout', 'QWERTY', 26);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (1, 0, 27);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', '2.4GHz Wireless', 27);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Built-in Touchpad', 'Yes', 27);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Media Control Keys', 'Yes', 27);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Design', 'Compact', 27);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Key Switches', 'Membrane', 27);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Key Layout', 'QWERTY', 27);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Backlight', 'No', 27);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery Life', '12 months', 27);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.6 lbs', 27);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '13.9" x 5.5" x 0.9"', 27);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (1, 0, 28);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'Wired USB', 28);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Design', 'Vertical', 28);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Sensor', 'Optical', 28);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Programmable Buttons', 'Yes', 28);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('DPI/CPI', '800', 28);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery Life', 'N/A', 28);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.3 lbs', 28);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '4.5" x 2.4" x 1.3"', 28);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color', 'Black', 28);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Key Layout', 'N/A', 28);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 29);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', '2.4GHz Wireless', 29);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Sensor', 'Optical', 29);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Buttons', '3', 29);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('DPI/CPI', '800', 29);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery Life', '12 months', 29);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.3 lbs', 29);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '4.5" x 2.4" x 1.3"', 29);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color', 'Black', 29);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Key Layout', 'N/A', 29);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 1, 30);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', '2.4GHz or Bluetooth Wireless', 30);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Sensor', 'Optical', 30);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Design', 'Compact and Portable', 30);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Key Switches', 'Membrane', 30);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Key Layout', 'QWERTY', 30);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Backlight', 'No', 30);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Buttons', '3 (on mouse)', 30);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('DPI/CPI', '800', 30);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery Life', '12 months', 30);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.6 lbs (keyboard), 0.3 lbs (mouse)', 30);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '17.5" x 5.5" x 0.9" (keyboard), 4.5" x 2.4" x 1.3" (mouse)', 30);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 31);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', '2.4GHz Wireless', 31);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Keyboard Size', 'Full-Size', 31);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery Life', 'Long', 31);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Key Switches', 'Membrane', 31);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Key Layout', 'QWERTY', 31);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Backlight', 'No', 31);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Buttons', '3 (on mouse)', 31);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('DPI/CPI', '800', 31);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.6 lbs (keyboard), 0.3 lbs (mouse)', 31);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '17.5" x 5.5" x 0.9" (keyboard), 4.5" x 2.4" x 1.3" (mouse)', 31);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 32);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'Bluetooth and 2.4GHz Wireless', 32);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Keyboard Size', 'Full-Size', 32);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Precision Mouse', 'Yes', 32);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Multi-Device Switching', 'Yes', 32);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Key Switches', 'Membrane', 32);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Key Layout', 'QWERTY', 32);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Backlight', 'No', 32);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Buttons', '3 (on mouse)', 32);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('DPI/CPI', '800', 32);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery Life', '12 months', 32);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.6 lbs (keyboard), 0.3 lbs (mouse)', 32);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '17.5" x 5.5" x 0.9" (keyboard), 4.5" x 2.4" x 1.3" (mouse)', 32);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 33);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', '2.4GHz Wireless', 33);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Keyboard Size', 'Full-Size', 33);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Sensor', 'Optical', 33);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery Life', 'Long', 33);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Key Switches', 'Membrane', 33);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Key Layout', 'QWERTY', 33);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Backlight', 'No', 33);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Buttons', '3 (on mouse)', 33);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('DPI/CPI', '800', 33);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.6 lbs (keyboard), 0.3 lbs (mouse)', 33);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '17.5" x 5.5" x 0.9" (keyboard), 4.5" x 2.4" x 1.3" (mouse)', 33);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 34);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'Wired USB', 34);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Sensor', 'Laser', 34);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Design', 'Ambidextrous', 34);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('DPI/CPI', '800', 34);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Buttons', '3', 34);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery Life', 'N/A', 34);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.3 lbs', 34);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '4.5" x 2.4" x 1.3"', 34);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color', 'Black', 34);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Key Layout', 'N/A', 34);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 35);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'Bluetooth', 35);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Surface', 'Black Multi-Touch', 35);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Gestures', 'Multi-Touch', 35);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Rechargeable', 'Yes', 35);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Sensor', 'Optical', 35);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Buttons', '1 (Multi-Touch)', 35);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('DPI/CPI', '1300', 35);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery Life', '9 hours', 35);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.22 lbs', 35);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '4.5" x 2.3" x 0.85"', 35);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (1, 0, 36);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', '2.4GHz and Bluetooth Wireless', 36);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Sensor', 'Optical', 36);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Design', 'Slim and Portable', 36);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('DPI/CPI', '800', 36);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Buttons', '3', 36);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery Life', '12 months', 36);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.3 lbs', 36);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '4.5" x 2.4" x 1.3"', 36);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color', 'Black', 36);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Key Layout', 'N/A', 36);

--products(audio)--
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Dell Speakerphone – SP3022 - USB Connectivity - Built-in Microphone and Speaker - Plug-and-Play - Compact Design', 'Dell', 252.00, 'Experience clear sound with the Dell Speakerphone – SP3022. It offers USB connectivity, a built-in microphone and speaker, and a compact design for easy use.', 4, 135);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Dell Slim Soundbar - SB521A - USB Connectivity - Stereo Sound - Slim Design', 'Dell', 428.76, 'Experience superior audio clarity with the Dell Slim Soundbar – SB521A. It offers USB connectivity, stereo sound, and a slim design for easy use.', 4, 162);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('XG500 X-Series Portable Wireless Speaker - Bluetooth Connectivity - High-Quality Sound - Rechargeable Battery - Portable Design', 'Sony', 1886.49, 'Experience the freedom of portability with the XG500 X-Series Portable Wireless Speaker by Sony. It offers Bluetooth connectivity, high-quality sound, and a rechargeable battery for long-lasting music play.', 4, 114);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Logitech H390 USB Headset - Noise Canceling', 'Logitech', 167.96, 'Experience clear internet calls with the Logitech H390 Wired Headset. It offers USB connectivity, a built-in noise-canceling microphone, and inline audio controls for easy use.', 4, 170);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Beats Fit Pro - True Wireless Earbuds - Active Noise Cancellation - Bluetooth Connectivity - In-ear Design - Water-Resistant', 'Beats', 839.96, 'Experience the freedom of wireless with the Beats Fit Pro. It offers Bluetooth connectivity, active noise cancellation, and a water-resistant in-ear design for easy use.', 4, 137);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Beats Studio Pro - Over-ear Wireless Headphones - Active Noise Cancellation - Bluetooth Connectivity - High-Resolution Audio', 'Beats', 1049.96, 'Experience immersive sound with the Beats Studio Pro. It offers Bluetooth connectivity, active noise cancellation, high-resolution audio, and a long battery life for easy use.', 4, 101);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Beats Studio Buds+ - True Wireless Earbuds - Bluetooth Connectivity - High-Quality Audio - Long Battery Life', 'Beats', 711.96, 'Dive into the world of high-quality audio with the Beats Studio Buds+. These true wireless earbuds offer Bluetooth connectivity and a long battery life for all-day music enjoyment.', 4, 106);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('SAMSUNG Galaxy Buds2 True Wireless Earbuds - Bluetooth Connectivity - Active Noise Cancellation - High-Quality Audio - Long Battery Life', 'Samsung', 630.00, 'Discover a new world of sound with the SAMSUNG Galaxy Buds2. These true wireless earbuds offer Bluetooth connectivity, active noise cancellation, high-quality audio, and a long battery life for uninterrupted music enjoyment.', 4, 191);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('SAMSUNG Galaxy Buds Pro 2 - True Wireless Earbuds - Bluetooth Connectivity - Active Noise Cancellation - High-Quality Audio - Long Battery Life', 'Samsung', 954.36, 'Immerse yourself in the world of high-quality audio with the SAMSUNG Galaxy Buds Pro 2. These true wireless earbuds offer Bluetooth connectivity, active noise cancellation, high-quality audio, and a long battery life for uninterrupted music enjoyment.', 4, 150);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Sony LinkBuds S Truly Wireless - Bluetooth Connectivity - High-Quality Audio - Touch Controls - Compact Design', 'Sony', 828.99, 'Unleash the power of sound with the Sony LinkBuds S. These truly wireless earbuds offer Bluetooth connectivity, high-quality audio, touch controls, and a compact design for seamless music enjoyment.', 4, 182);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Sony Extra Bass Bluetooth Headphones - Bluetooth Connectivity - Extra Bass for Enhanced Sound - Built-in Microphone - Wireless Design', 'Sony', 1032.48, 'Immerse yourself in the world of deep, punchy sound with the Sony Extra Bass Bluetooth Headphones. These wireless headphones offer Bluetooth connectivity, extra bass for enhanced sound, and a built-in microphone for hands-free calls.', 4, 136);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Apple AirPods (2nd Generation) - True Wireless Earbuds - Bluetooth Connectivity - Quick Pairing with Apple Devices - Siri Voice Activation', 'Apple', 536.31, 'Enjoy seamless integration with the Apple AirPods (2nd Generation). These true wireless earbuds offer Bluetooth connectivity, quick pairing with Apple devices, and Siri voice activation for a hands-free experience.', 4, 163);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 37);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'USB', 37);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Built-in Microphone', 'Yes', 37);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Built-in Speaker', 'Yes', 37);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Plug-and-Play', 'Yes', 37);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Design', 'Compact', 37);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Frequency Response', '20Hz - 20kHz', 37);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Impedance', '32 Ohms', 37);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Sensitivity', '105 dB', 37);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.5 lbs', 37);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '4.5" x 4.5" x 1.3"', 37);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 38);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'USB', 38);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Sound', 'Stereo', 38);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Design', 'Slim', 38);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Frequency Response', '20Hz - 20kHz', 38);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Impedance', '32 Ohms', 38);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Sensitivity', '105 dB', 38);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.5 lbs', 38);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '12.2" x 2.1" x 2.0"', 38);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color', 'Black', 38);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery Life', 'N/A', 38);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 39);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'Bluetooth', 39);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Sound Quality', 'High', 39);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery', 'Rechargeable', 39);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Design', 'Portable', 39);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Frequency Response', '20Hz - 20kHz', 39);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Impedance', '4 Ohms', 39);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Sensitivity', '88 dB', 39);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '5.3 lbs', 39);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '11.5" x 5.2" x 5.2"', 39);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color', 'Black', 39);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 40);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'USB', 40);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Design', 'Over-ear', 40);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Built-in Microphone', 'Yes', 40);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Inline Audio Controls', 'Yes', 40);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Noise-Canceling', 'Yes', 40);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Frequency Response', '20Hz - 20kHz', 40);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Impedance', '32 Ohms', 40);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Sensitivity', '105 dB', 40);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.3 lbs', 40);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '6.5" x 2.3" x 7.3"', 40);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (1, 1, 41);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'Bluetooth', 41);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Design', 'In-ear', 41);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Active Noise Cancellation', 'Yes', 41);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Water-Resistant', 'Yes', 41);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Frequency Response', '20Hz - 20kHz', 41);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Impedance', '32 Ohms', 41);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Sensitivity', '105 dB', 41);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery Life', '6 hours', 41);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.04 lbs', 41);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '0.94" x 0.86" x 0.76"', 41);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 1, 42);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'Bluetooth', 42);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Design', 'Over-ear', 42);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Active Noise Cancellation', 'Yes', 42);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('High-Resolution Audio', 'Yes', 42);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery Life', 'Long', 42);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Frequency Response', '20Hz - 20kHz', 42);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Impedance', '32 Ohms', 42);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Sensitivity', '105 dB', 42);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.6 lbs', 42);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '7.3" x 6.3" x 3.2"', 42);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (1, 0, 43);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'Bluetooth', 43);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Audio Quality', 'High', 43);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery Life', 'Long', 43);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Design', 'True Wireless Earbuds', 43);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Frequency Response', '20Hz - 20kHz', 43);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Impedance', '32 Ohms', 43);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Sensitivity', '105 dB', 43);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.04 lbs', 43);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '0.94" x 0.86" x 0.76"', 43);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color', 'Black', 43);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 44);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'Bluetooth', 44);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Active Noise Cancellation', 'Yes', 44);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Audio Quality', 'High', 44);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery Life', 'Long', 44);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Design', 'True Wireless Earbuds', 44);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Frequency Response', '20Hz - 20kHz', 44);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Impedance', '32 Ohms', 44);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Sensitivity', '105 dB', 44);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.04 lbs', 44);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '0.94" x 0.86" x 0.76"', 44);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (1, 0, 45);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'Bluetooth', 45);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Active Noise Cancellation', 'Yes', 45);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Audio Quality', 'High', 45);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery Life', 'Long', 45);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Design', 'True Wireless Earbuds', 45);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Frequency Response', '20Hz - 20kHz', 45);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Impedance', '32 Ohms', 45);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Sensitivity', '105 dB', 45);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.04 lbs', 45);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '0.94" x 0.86" x 0.76"', 45);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 46);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'Bluetooth', 46);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Audio Quality', 'High', 46);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Touch Controls', 'Yes', 46);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Design', 'Compact', 46);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Frequency Response', '20Hz - 20kHz', 46);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Impedance', '32 Ohms', 46);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Sensitivity', '105 dB', 46);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery Life', '8 hours', 46);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.04 lbs', 46);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '0.94" x 0.86" x 0.76"', 46);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 1, 47);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'Bluetooth', 47);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Extra Bass', 'Yes', 47);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Built-in Microphone', 'Yes', 47);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Design', 'Wireless', 47);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Frequency Response', '20Hz - 20kHz', 47);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Impedance', '32 Ohms', 47);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Sensitivity', '105 dB', 47);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery Life', '20 hours', 47);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.6 lbs', 47);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '7.3" x 6.3" x 3.2"', 47);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (1, 1, 48);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'Bluetooth', 48);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Design', 'True Wireless Earbuds', 48);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Quick Pairing with Apple Devices', 'Yes', 48);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Siri Voice Activation', 'Yes', 48);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Frequency Response', '20Hz - 20kHz', 48);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Impedance', '32 Ohms', 48);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Sensitivity', '105 dB', 48);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Battery Life', '5 hours', 48);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.04 lbs', 48);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '0.65" x 0.71" x 1.59"', 48);

--products(Hard Drives, SSDs & Storage)---
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Toshiba Canvio Basics 2TB Portable External Hard Drive - 2TB Storage - USB 3.0 Connectivity', 'Toshiba', 312.57, 'Store your files with the Toshiba Canvio Basics 2TB Portable External Hard Drive. It offers 2TB of storage and USB 3.0 connectivity for quick data transfers.', 5, 115);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('WD 5TB Elements Portable HDD - 5TB Storage - USB 3.0 Connectivity', 'Western Digital', 678.29, 'Expand your storage with the WD 5TB Elements Portable HDD. It offers 5TB of storage and USB 3.0 connectivity for quick data transfers.', 5, 171);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('SAMSUNG 870 EVO SATA III SSD - 1TB Storage - Internal Solid State Drive', 'Samsung', 467.21, 'Upgrade your storage with the SAMSUNG 870 EVO SATA III SSD. It offers 1TB of storage and SATA III connectivity for quick data transfers.', 5, 138);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Seagate Expansion Portable - 5TB Storage - External Hard Drive', 'Seagate', 491.35, 'Expand your storage with the Seagate Expansion Portable. It offers 5TB of storage and USB 3.0 connectivity for quick data transfers.', 5, 102);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Seagate Constellation ES ST4000NM0033 - 4TB Storage', 'Seagate', 535.65, 'Boost your storage with the Seagate Constellation ES ST4000NM0033. It offers 4TB of storage and SATA III connectivity for quick data transfers.', 5, 107);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('SanDisk SSD PLUS - 1TB Storage - Internal Solid State Drive (SSD)', 'SanDisk', 353.43, 'Boost the performance of your computer with the SanDisk SSD PLUS. It offers 1TB of storage and SATA III connectivity for quick data transfers.', 5, 192);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('SanDisk 64GB Ultra Dual Drive - 64GB Storage - Dual USB Type-A and USB Type-C Connectors - High-Speed Data Transfer - Compact Design', 'SanDisk', 66.62, 'Expand your storage with the SanDisk 64GB Ultra Dual Drive. It offers 64GB of storage, dual USB Type-A and USB Type-C connectors, and high-speed data transfer for quick file access.', 5, 151);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Western Digital 5TB My Passport Ultra - Portable External Hard Drive - 5TB Storage', 'Western Digital', 562.24, 'Store your files with the Western Digital 5TB My Passport Ultra. It offers 5TB of storage and USB 3.0 connectivity for quick data transfers.', 5, 183);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Western Digital 2TB WD Blue PC Internal Hard Drive - 2TB Storage - Internal Hard Drive', 'Western Digital', 266.07, 'Boost the performance of your computer with the Western Digital 2TB WD Blue PC Internal Hard Drive. It offers 2TB of storage and SATA III connectivity for quick data transfers.', 5, 137);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Western Digital 4TB WD Red SA500 - Internal Solid State Drive (SSD) - 4TB Storage - 3D NAND Technology', 'Western Digital', 2043.86, 'Boost the performance of your computer with the Western Digital 4TB WD Red SA500. It offers 4TB of storage and SATA III connectivity for quick data transfers.', 5, 164);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Toshiba Canvio Basics 2TB - Portable Hard Drive - 2TB Storage', 'Toshiba', 315.00, 'Store your files with the Toshiba Canvio Basics 2TB Portable External Hard Drive. It offers 2TB of storage and USB 3.0 connectivity for quick data transfers.', 5, 116);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('SanDisk Extreme 1TB - Portable Solid State Drive (SSD) - 1TB Storage', 'SanDisk', 372.78, 'Boost the performance of your computer with the SanDisk Extreme 1TB Portable SSD. It offers 1TB of storage and USB 3.0 connectivity for quick data transfers.', 5, 172);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 49);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage Capacity', '2TB', 49);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'USB 3.0', 49);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', 'Not specified', 49);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', 'Not specified', 49);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color', 'Not specified', 49);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Compatibility', 'Windows/Mac', 49);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Data Transfer Rate', 'Not specified', 49);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Power Source', 'USB-powered', 49);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Included Cables', 'USB 3.0 cable', 49);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 1, 50);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage Capacity', '5TB', 50);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'USB 3.0', 50);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', 'Not specified', 50);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', 'Not specified', 50);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color', 'Not specified', 50);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Compatibility', 'Windows/Mac', 50);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Data Transfer Rate', 'Not specified', 50);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Power Source', 'USB-powered', 50);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Included Cables', 'USB 3.0 cable', 50);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 51);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage Capacity', '1TB', 51);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'SATA III', 51);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', 'Not specified', 51);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', 'Not specified', 51);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color', 'Not specified', 51);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Compatibility', 'Not specified', 51);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Data Transfer Rate', 'Not specified', 51);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Form Factor', '2.5-inch', 51);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Read Speed', '560 MB/s', 51);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Write Speed', '530 MB/s', 51);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 1, 52);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage Capacity', '5TB', 52);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'USB 3.0', 52);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', 'Not specified', 52);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', 'Not specified', 52);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color', 'Not specified', 52);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Compatibility', 'Not specified', 52);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Data Transfer Rate', 'Not specified', 52);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Power Source', 'USB-powered', 52);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Included Cables', 'USB 3.0 cable', 52);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 53);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage Capacity', '4TB', 53);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'SATA III', 53);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '5.8" x 4" x 1"', 53);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '1.7 lbs', 53);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color', 'Silver', 53);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Compatibility', 'Windows/Mac', 53);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Data Transfer Rate', '6.0 Gb/s', 53);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Power Source', 'Internal Power Supply', 53);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Included Cables', 'Not specified', 53);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 54);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage Capacity', '1TB', 54);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'SATA III', 54);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', 'Not specified', 54);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', 'Not specified', 54);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color', 'Not specified', 54);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Compatibility', 'Not specified', 54);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Data Transfer Rate', 'Not specified', 54);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Form Factor', '2.5-inch', 54);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Read Speed', '535 MB/s', 54);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Write Speed', '450 MB/s', 54);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (1, 0, 55);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage Capacity', '64GB', 55);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'Dual USB Type-A and USB Type-C', 55);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '1.5" x 0.5" x 0.3"', 55);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.32 oz', 55);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color', 'Black', 55);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Compatibility', 'USB Type-A and USB Type-C', 55);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Data Transfer Rate', 'Up to 150MB/s', 55);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Form Factor', 'Compact', 55);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Interface', 'USB 3.1', 55);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 56);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage Capacity', '5TB', 56);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'USB 3.0', 56);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '4.22" x 2.95" x 0.75"', 56);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '0.50 lbs', 56);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color', 'Silver', 56);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Compatibility', 'Windows/Mac', 56);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Data Transfer Rate', 'Up to 5Gb/s', 56);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Power Source', 'USB-powered', 56);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Included Cables', 'USB 3.0 cable', 56);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Encryption', '256-bit AES hardware encryption', 56);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (1, 1, 57);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage Capacity', '2TB', 57);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'SATA III', 57);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', 'Not specified', 57);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', 'Not specified', 57);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color', 'Not specified', 57);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Compatibility', 'Not specified', 57);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Data Transfer Rate', 'Not specified', 57);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Form Factor', '3.5-inch', 57);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('RPM', '5400 RPM', 57);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Cache', '64MB', 57);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 58);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage Capacity', '4TB', 58);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'SATA III', 58);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', 'Not specified', 58);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', 'Not specified', 58);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color', 'Not specified', 58);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Compatibility', 'Not specified', 58);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Data Transfer Rate', 'Not specified', 58);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Form Factor', '2.5-inch', 58);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('NAND Technology', '3D NAND', 58);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 59);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage Capacity', '2TB', 59);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'USB 3.0', 59);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '4.3" x 3.1" x 0.55"', 59);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '5.28 oz', 59);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color', 'Black', 59);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Compatibility', 'Windows/Mac', 59);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Data Transfer Rate', 'Up to 5Gb/s', 59);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Power Source', 'USB-powered', 59);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Included Cables', 'USB 3.0 cable', 59);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 60);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Storage Capacity', '1TB', 60);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Connectivity', 'USB 3.0', 60);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '4.34" x 2.26" x 0.4"', 60);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '1.4 oz', 60);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color', 'Black', 60);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Compatibility', 'Windows/Mac', 60);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Data Transfer Rate', 'Up to 550MB/s', 60);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Power Source', 'USB-powered', 60);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Encryption', '128-bit AES encryption', 60);

--products(inkjet printers)--
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('HP OfficeJet 250 - All-in-One Portable Printer - Mobile Printing - Wireless Connectivity - Color Printing - Compact and Portable Design', 'HP', 2227.47, 'HP OfficeJet 250 is an all-in-one printer that offers mobile printing with wireless connectivity. It supports color printing and has a compact and portable design.', 6, 139);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Canon TS202 - Inkjet Photo Printer - Color Printing - Compact Design - USB Connectivity', 'Canon', 162.33, 'Canon TS202 is an inkjet photo printer that supports color printing. It has a compact design and offers USB connectivity.', 6, 103);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Canon IP8720 - Wireless Printer - Color Printing - Wireless Connectivity - High-Resolution Printing', 'Canon', 749.49, 'Canon IP8720 is a wireless printer that supports color printing. It offers wireless connectivity and high-resolution printing.', 6, 108);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Epson C11CG97201-RB Expression XP-6100 - All-In-One Printer - Color Printing - Wireless Connectivity - Scanning and Copying Capabilities', 'Epson', 403.93, 'The Epson C11CG97201-RB Expression XP-6100 is an all-in-one printer that supports color printing. It offers wireless connectivity and comes with scanning and copying capabilities.', 6, 193);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Canon TS9521C - All-In-One Wireless Crafting Photo Printer - Color Printing - Wireless Connectivity - Scanning and Copying Capabilities', 'Canon', 471.42, 'The Canon TS9521C is an all-in-one wireless crafting photo printer that supports color printing. It offers wireless connectivity and comes with scanning and copying capabilities.', 6, 152);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Brother MFC-J2340DW - Inkjet Printer - Color Printing - Wireless Connectivity - All-in-One Capabilities (Printing, Scanning, Copying, Faxing)', 'Brother', 447.43, 'The Brother MFC-J2340DW is an all-in-one inkjet printer that supports color printing. It offers wireless connectivity and comes with all-in-one capabilities including printing, scanning, copying, and faxing.', 6, 184);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Brother DCP-T720DW - Ink Tank Printer - Color Printing - Wireless Connectivity - All-in-One Capabilities (Printing, Scanning, Copying)', 'Brother', 953.60, 'The Brother DCP-T720DW is an ink tank printer that supports color printing. It offers wireless connectivity and comes with all-in-one capabilities including printing, scanning, and copying.', 6, 138);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('HP DeskJet 3755 - Compact All-in-One Wireless Printer - Color Printing - Wireless Connectivity', 'HP', 442.57, 'The HP DeskJet 3755 is a compact all-in-one wireless printer that supports color printing.', 6, 165);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('HP OfficeJet Pro 6230 - Wireless Color Printer - Color Printing - Wireless Connectivity - Automatic Duplex Printing (Double-Sided Printing)', 'HP', 509.84, 'The HP OfficeJet Pro 6230 is a wireless color printer that supports color printing. It offers wireless connectivity and comes with automatic duplex printing (double-sided printing) feature.', 6, 117);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('HP OfficeJet Pro 6968 - All-in-One Wireless Printer - Color Printing - Wireless Connectivity - Automatic Duplex Printing', 'HP', 1916.46, 'The HP OfficeJet Pro 6968 is an all-in-one wireless printer that supports color printing. It offers wireless connectivity and comes with automatic duplex printing (double-sided printing) feature', 6, 173);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Epson Workforce Pro WF-3820 - Wireless Inkjet All-in-One Color Printer - Color Printing - Wireless Connectivity - Automatic Duplex Printing', 'Epson', 574.38, 'The Epson Workforce Pro WF-3820 is a wireless inkjet all-in-one color printer that supports color printing. It offers wireless connectivity and comes with automatic duplex printing (double-sided printing) feature.', 6, 140);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 61);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printer Type', 'All-in-One', 61);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printing Technology', 'Inkjet', 61);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Mobile Printing', 'Yes', 61);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless Connectivity', 'Yes', 61);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color Printing', 'Yes', 61);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Compact Design', 'Yes', 61);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '14.96" x 7.8" x 3.6"', 61);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '6.51 lbs', 61);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Display Size', '2.65 inches', 61);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Black)', 'Up to 10 ppm', 61);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 1, 62);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printer Type', 'Inkjet', 62);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printing Technology', 'Inkjet', 62);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color Printing', 'Yes', 62);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Compact Design', 'Yes', 62);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('USB Connectivity', 'Yes', 62);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '16.8" x 12.5" x 5.8"', 62);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '8.5 lbs', 62);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Black)', 'Up to 7.7 ppm', 62);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Color)', 'Up to 4 ppm', 62);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Maximum Print Resolution', '4800 x 1200 dpi', 62);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 63);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printer Type', 'Wireless', 63);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printing Technology', 'Inkjet', 63);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color Printing', 'Yes', 63);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless Connectivity', 'Yes', 63);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('High-Resolution Printing', 'Yes', 63);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '23.3" x 13.1" x 6.3"', 63);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '18.6 lbs', 63);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Black)', 'Up to 14.5 ppm', 63);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Color)', 'Up to 10.4 ppm', 63);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Maximum Print Resolution', '9600 x 2400 dpi', 63);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 64);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printer Type', 'All-In-One', 64);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printing Technology', 'Inkjet', 64);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color Printing', 'Yes', 64);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless Connectivity', 'Yes', 64);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Scanning Capabilities', 'Yes', 64);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Copying Capabilities', 'Yes', 64);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '13.4" x 19.8" x 10"', 64);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '14.6 lbs', 64);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Black)', 'Up to 15.8 ppm', 64);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Color)', 'Up to 11 ppm', 64);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 65);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printer Type', 'All-In-One', 65);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printing Technology', 'Inkjet', 65);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color Printing', 'Yes', 65);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless Connectivity', 'Yes', 65);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Scanning Capabilities', 'Yes', 65);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Copying Capabilities', 'Yes', 65);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '18.5" x 14.5" x 7.6"', 65);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '21.5 lbs', 65);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Black)', 'Up to 15 ppm', 65);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Color)', 'Up to 10 ppm', 65);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (1, 0, 66);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printer Type', 'Inkjet', 66);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printing Technology', 'Inkjet', 66);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color Printing', 'Yes', 66);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless Connectivity', 'Yes', 66);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('All-in-One Capabilities', 'Yes (Printing, Scanning, Copying, Faxing)', 66);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '17.1" x 13.4" x 7.7"', 66);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '19.8 lbs', 66);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Black)', 'Up to 12 ppm', 66);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Color)', 'Up to 10 ppm', 66);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 67);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printer Type', 'Ink Tank', 67);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printing Technology', 'Inkjet', 67);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color Printing', 'Yes', 67);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless Connectivity', 'Yes', 67);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('All-in-One Capabilities', 'Yes (Printing, Scanning, Copying)', 67);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '15.7" x 14.4" x 7.7"', 67);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '17.4 lbs', 67);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Black)', 'Up to 28 ppm', 67);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Color)', 'Up to 11 ppm', 67);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 1, 68);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printer Type', 'Compact All-in-One', 68);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printing Technology', 'Inkjet', 68);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color Printing', 'Yes', 68);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless Connectivity', 'Yes', 68);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '15.86" x 6.97" x 5.55"', 68);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '5.13 lbs', 68);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Black)', 'Up to 8 ppm', 68);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Color)', 'Up to 5.5 ppm', 68);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 69);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printer Type', 'Wireless Color', 69);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printing Technology', 'Inkjet', 69);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color Printing', 'Yes', 69);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless Connectivity', 'Yes', 69);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Automatic Duplex Printing', 'Yes (Double-Sided Printing)', 69);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '18.26" x 15.16" x 5.67"', 69);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '15.85 lbs', 69);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Black)', 'Up to 18 ppm', 69);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Color)', 'Up to 10 ppm', 69);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 70);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printer Type', 'All-in-One Wireless', 70);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printing Technology', 'Inkjet', 70);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color Printing', 'Yes', 70);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless Connectivity', 'Yes', 70);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Automatic Duplex Printing', 'Yes (Double-Sided Printing)', 70);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '18.26" x 15.35" x 9.0"', 70);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '17.91 lbs', 70);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Black)', 'Up to 18 ppm', 70);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Color)', 'Up to 10 ppm', 70);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (1, 1, 71);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printer Type', 'Wireless Inkjet All-in-One', 71);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printing Technology', 'Inkjet', 71);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color Printing', 'Yes', 71);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless Connectivity', 'Yes', 71);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Automatic Duplex Printing', 'Yes (Double-Sided Printing)', 71);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '16.7" x 14.1" x 9.1"', 71);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '22.7 lbs', 71);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Black)', 'Up to 21 ppm', 71);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Color)', 'Up to 11 ppm', 71);

--products(laser printers)--
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Brother Monochrome Laser Printer, HL-L5200DW - Monochrome (Black and White) Printing - High-Speed Laser Printing - Wireless Connectivity', 'Brother', 1165.58, 'The Brother HL-L5200DW is a monochrome laser printer that supports black and white printing. It offers high-speed laser printing and wireless connectivity. This printer is designed for those who need efficient monochrome printing.', 7, 104);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('HP Laserjet Pro 4001dw - Single-Function Wireless Monochrome Laser Printer - Monochrome (Black and White) Printing - Wireless Connectivity', 'HP', 2307.41, 'The HP Laserjet Pro 4001dw is a single-function wireless monochrome laser printer that supports black and white printing. It offers wireless connectivity. This printer is designed for those who need efficient monochrome printing.', 7, 109);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('HP Laserjet Pro M454dn - Single-Function Print only Wired Color Laser Printer - Color Printing - Ethernet Connectivity', 'HP', 1974.99, 'The HP Laserjet Pro M454dn is a single-function wired color laser printer that supports color printing. It offers Ethernet connectivity. This printer is designed for those who need efficient color printing in a wired network environment.', 7, 193);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Xerox C410 - Color Printer - Color Printing - USB and Network Connectivity - Compact Design', 'Xerox', 3085.51, 'The Xerox C410 is a color printer that supports color printing. It offers USB and network connectivity. This printer is designed for those who need a reliable color printer for their home or small office.', 7, 152);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Brother MFCL2700DW - All-In-One Laser Printer - Monochrome (Black and White) Printing - Wireless Connectivity - Automatic Duplex Printing', 'Brother', 801.71, 'The Brother MFCL2700DW is an all-in-one laser printer that supports monochrome (black and white) printing. It offers wireless connectivity and comes with automatic duplex printing (double-sided printing) feature.', 7, 185);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Brother Printer RHLL8260CDW - Business Color Laser Printer - Color Printing - Wireless Connectivity - High-Speed Laser Printing', 'Brother', 1396.49, 'The Brother Printer RHLL8260CDW is a business color laser printer that supports color printing. It offers wireless connectivity and high-speed laser printing. This printer is designed for those who need a reliable color printer for business use.', 7, 139);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('HP CZ181A LaserJet Pro MFP M127fn - Multifunction Laser Printer - Monochrome (Black and White) Printing - Ethernet and USB Connectivity', 'HP', 1425.77, 'The HP CZ181A LaserJet Pro MFP M127fn is a multifunction laser printer that supports monochrome (black and white) printing. It offers Ethernet and USB connectivity. This printer is designed for those who need a reliable monochrome multifunction printer.', 7, 166);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('HP LaserJet Pro 400 M401dn - Monochrome (Black and White) Laser Printer - Ethernet and USB Connectivity - Automatic Duplex Printing', 'HP', 2962.11, 'The HP LaserJet Pro 400 M401dn is a monochrome laser printer that supports black and white printing. It offers Ethernet and USB connectivity and comes with automatic duplex printing (double-sided printing) feature.', 7, 118);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('HP Laserjet Enterprise M612 M612dn Desktop Laser Printer - Monochrome', 'HP', 7957.14, 'The HP Laserjet Enterprise M612 M612dn is a desktop laser printer that supports monochrome (black and white) printing. It offers USB and Ethernet connectivity. This printer is designed for those who need a reliable monochrome printer for their enterprise.', 7, 174);
INSERT INTO product(name, manufacturer, unit_price, description, subcategory_id, quantity_in_stock) VALUES ('Lexmark MS710 MS711dn - Monochrome Laser Printer - Ethernet and USB Connectivity - Automatic Duplex Printing', 'Lexmark', 1602.60, 'The Lexmark MS710 MS711dn is a monochrome laser printer that supports black and white printing. It offers Ethernet and USB connectivity and comes with automatic duplex printing (double-sided printing) feature.', 7, 141);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 1, 72);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printer Type', 'Monochrome Laser', 72);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printing Technology', 'Laser', 72);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color Printing', 'No', 72);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless Connectivity', 'Yes', 72);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Black)', 'Up to 42 ppm', 72);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '14.0" x 15.3" x 10.0"', 72);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '23.5 lbs', 72);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Monthly Duty Cycle', '50,000 pages', 72);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Input Capacity', '250 sheets', 72);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Memory', '256 MB', 72);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 73);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printer Type', 'Single-Function Monochrome Laser', 73);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printing Technology', 'Laser', 73);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color Printing', 'No', 73);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless Connectivity', 'Yes', 73);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Black)', 'Up to 42 ppm', 73);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '16.3" x 14.5" x 8.8"', 73);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '21.3 lbs', 73);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Monthly Duty Cycle', '80,000 pages', 73);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Input Capacity', '250 sheets', 73);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Memory', '256 MB', 73);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 74);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printer Type', 'Single-Function Color Laser', 74);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printing Technology', 'Laser', 74);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color Printing', 'Yes', 74);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless Connectivity', 'No', 74);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ethernet Connectivity', 'Yes', 74);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Black)', 'Up to 28 ppm', 74);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Color)', 'Up to 28 ppm', 74);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '16.2" x 18.5" x 11.6"', 74);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '51.6 lbs', 74);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Monthly Duty Cycle', '50,000 pages', 74);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 75);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printer Type', 'Color Printer', 75);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printing Technology', 'Not Specified', 75);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color Printing', 'Yes', 75);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless Connectivity', 'No', 75);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('USB Connectivity', 'Yes', 75);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Network Connectivity', 'Yes', 75);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '16.8" x 16.5" x 13.3"', 75);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '50.7 lbs', 75);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Black)', 'Not Specified', 75);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Color)', 'Not Specified', 75);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 1, 76);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printer Type', 'All-In-One Laser', 76);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printing Technology', 'Laser', 76);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color Printing', 'No', 76);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless Connectivity', 'Yes', 76);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Automatic Duplex Printing', 'Yes (Double-Sided Printing)', 76);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '16.1" x 15.7" x 10.5"', 76);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '26.0 lbs', 76);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Monthly Duty Cycle', '10,000 pages', 76);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Input Capacity', '250 sheets', 76);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Memory', '32 MB', 76);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 77);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printer Type', 'Business Color Laser', 77);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printing Technology', 'Laser', 77);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color Printing', 'Yes', 77);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Wireless Connectivity', 'Yes', 77);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Black)', 'Up to 33 ppm', 77);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Color)', 'Up to 33 ppm', 77);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '17.4" x 18.1" x 11.4"', 77);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '47.8 lbs', 77);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Monthly Duty Cycle', '40,000 pages', 77);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 78);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printer Type', 'Multifunction Laser', 78);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printing Technology', 'Laser', 78);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color Printing', 'No', 78);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ethernet Connectivity', 'Yes', 78);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('USB Connectivity', 'Yes', 78);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '16.1" x 17.4" x 13.4"', 78);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '21.6 lbs', 78);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Monthly Duty Cycle', '8,000 pages', 78);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Input Capacity', '150 sheets', 78);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Memory', '128 MB', 78);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 79);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printer Type', 'Monochrome Laser', 79);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printing Technology', 'Laser', 79);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color Printing', 'No', 79);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ethernet Connectivity', 'Yes', 79);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('USB Connectivity', 'Yes', 79);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Automatic Duplex Printing', 'Yes (Double-Sided Printing)', 79);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '14.35" x 14.49" x 10.51"', 79);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '25.8 lbs', 79);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Black)', 'Up to 35 ppm', 79);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Monthly Duty Cycle', '50,000 pages', 79);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 0, 80);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printer Type', 'Desktop Monochrome Laser', 80);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printing Technology', 'Laser', 80);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color Printing', 'No', 80);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('USB Connectivity', 'Yes', 80);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ethernet Connectivity', 'Yes', 80);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '16.2" x 18.3" x 15.7"', 80);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '52.7 lbs', 80);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Monthly Duty Cycle', '275,000 pages', 80);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Black)', 'Up to 75 ppm', 80);

INSERT INTO product_tag (new_arrival, best_seller, product_id) VALUES (0, 1, 81);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printer Type', 'Monochrome Laser', 81);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Printing Technology', 'Laser', 81);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Color Printing', 'No', 81);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Ethernet Connectivity', 'Yes', 81);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('USB Connectivity', 'Yes', 81);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Automatic Duplex Printing', 'Yes (Double-Sided Printing)', 81);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Dimensions', '16.7" x 16.1" x 20.1"', 81);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Weight', '51.2 lbs', 81);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Print Speed (Black)', 'Up to 55 ppm', 81);
INSERT INTO product_spec (spec_name, spec_value, product_id) VALUES ('Monthly Duty Cycle', '250,000 pages', 81);

--CREATE TABLE IF NOT EXISTS category (
--    id BIGINT NOT NULL AUTO_INCREMENT,
--    name VARCHAR(255) NOT NULL,
--    PRIMARY KEY (`id`)
--)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
--CREATE TABLE IF NOT EXISTS subcategory (
--    id BIGINT NOT NULL AUTO_INCREMENT,
--    name VARCHAR(255) NOT NULL,
--    category_id BIGINT,
--    PRIMARY KEY (`id`),
--    FOREIGN KEY (category_id) REFERENCES category(id)
--)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
--CREATE TABLE IF NOT EXISTS product (
--    id BIGINT AUTO_INCREMENT PRIMARY KEY,
--    name VARCHAR(255) NOT NULL,
--    manufacturer VARCHAR(255),
--    price DECIMAL(10, 2),
--    description TEXT,
--    subcategory_id BIGINT,
--    FOREIGN KEY (subcategory_id) REFERENCES subcategory(id)
--)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
--CREATE TABLE IF NOT EXISTS product_tag (
--    id BIGINT AUTO_INCREMENT PRIMARY KEY,
--    new_arrival BOOLEAN,
--    best_seller BOOLEAN,
--    product_id BIGINT,
--    FOREIGN KEY (product_id) REFERENCES product(id)
--)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
--CREATE TABLE IF NOT EXISTS product_spec (
--    id BIGINT AUTO_INCREMENT PRIMARY KEY,
--    spec_name VARCHAR(255) NOT NULL,
--    spec_value VARCHAR(255),
--    product_id BIGINT,
--    FOREIGN KEY (product_id) REFERENCES product(id)
--)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;





















