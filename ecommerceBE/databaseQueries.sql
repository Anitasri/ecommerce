CREATE TABLE category (
	id IDENTITY,
	name VARCHAR(50),
	description VARCHAR(255),
	image_url VARCHAR(50),
	is_active BOOLEAN,
	CONSTRAINT pk_category_id PRIMARY KEY (id) 

);


-- adding three categories
INSERT INTO category (name, description,image_url,is_active) VALUES ('Starters', 'Its the best way to start an indian meal!', 'starter1.png', true);
INSERT INTO category (name, description,image_url,is_active) VALUES ('Main courses', 'To fill your crying stomach', 'starter2.png', true);
INSERT INTO category (name, description,image_url,is_active) VALUES ('Desserts', 'Have you thought of an ending?', 'starter3.png', true);


CREATE TABLE user_detail (
	id IDENTITY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	role VARCHAR(50),
	enabled BOOLEAN,
	password VARCHAR(60),
	email VARCHAR(100),
	contact_number VARCHAR(15),	
	CONSTRAINT pk_user_id PRIMARY KEY(id)
);


-- adding three users 
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Anita', 'Sri', 'ADMIN', true, '$2a$06$ORtBskA2g5Wg0HDgRE5ZsOQNDHUZSdpJqJ2.PGXv0mKyEvLnKP7SW', 'as@gmail.com', '8888888888');
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Rahul', 'karna', 'SUPPLIER', true, '$2a$06$bzYMivkRjSxTK2LPD8W4te6jjJa795OwJR1Of5n95myFsu3hgUnm6', 'rk@gmail.com', '9999999999');
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Keerthi', 'Das', 'SUPPLIER', true, '$2a$06$i1dLNlXj2uY.UBIb9kUcAOxCigGHUZRKBtpRlmNtL5xtgD6bcVNOK', 'kd@gmail.com', '7777777777');


CREATE TABLE item (
	id IDENTITY,
	code VARCHAR(20),
	name VARCHAR(50),
	food_type VARCHAR(50),
	description VARCHAR(255),
	unit_price DECIMAL(10,2),
	quantity INT,
	is_active BOOLEAN,
	category_id INT,
	supplier_id INT,
	purchases INT DEFAULT 0,
	views INT DEFAULT 0,
	CONSTRAINT pk_item_id PRIMARY KEY (id),
 	CONSTRAINT fk_item_category_id FOREIGN KEY (category_id) REFERENCES category (id),
	CONSTRAINT fk_item_supplier_id FOREIGN KEY (supplier_id) REFERENCES user_detail(id),	
);	


-- adding five items
INSERT INTO item (code, name, food_type, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('ITMABC123DEFX', 'Chicken Steak Broccoli Stir Fry', 'Fry', 'Add to these cubes of chicken some broccoli and other summer vegetable and toss them in with a delicious sauce filled with the goodness of Asian flavours', 140, 10, true, 1, 2, 0, 0 );
INSERT INTO item (code, name, food_type, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('ITMDEF123DEFX', 'Beijing Paneer Vegetable Stir Fry', 'Fry', 'Our Beijing paneer vegetable stir fry brings together some of the most quintessential Chinese flavours together, replacing tofu with an Indian staple: paneer.', 140, 20, true, 1, 3, 0, 0 );
INSERT INTO item (code, name, food_type, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('ITMPQR123WGTX', 'Chilli Garlic Chicken Bowl', 'Bowl', 'Juicy chicken pieces batter fried and tossed in a spicy chilli sauce are served with a healthy portion of assorted veggie fried rice!', 132, 20, true, 2, 2, 0, 0 );
INSERT INTO item (code, name, food_type, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('ITMMNO123PQRX', ' Paneer Butter-Masala n Peas Pulao', 'Bowl', 'Delicious paneer tikka cooked in a rich tomato makhani gravy served on a bed of aromatic coriander pea rice.', 119, 30, true, 2, 2, 0, 0 );
INSERT INTO item (code, name, food_type, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('ITMABCXYZDEFX', 'Sunrise Smoothie Bowl', 'Smoothie', 'Fresh cream, saffron cream and hung curd are combined to make a creamy topping for a crunchy chopped-fruits base. Garnished with more fruits', 91, 30, true, 3, 3, 0, 0 );
--6th ITEM
INSERT INTO item (code, name, food_type, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('ITMABCXYZDEFX', 'Mango Smoothie Bowl', 'Smoothie', 'A base of cut mixed fruits is covered in a delicious whisk of hung curd, fresh cream and mango and topped with another helping of fruits and mango yogurt', 91, 30, true, 3, 3, 0, 0 );



SELECT * FROM CATEGORY ;
SELECT * FROM PRODUCT ;
SELECT * FROM USER_DETAIL ;