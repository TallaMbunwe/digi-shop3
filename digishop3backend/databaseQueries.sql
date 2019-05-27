CREATE TABLE category(

	id  INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(50),
	description VARCHAR(255),
	image_url VARCHAR(50),
	is_active BOOLEAN,
	
	CONSTRAINT pk_category_id PRIMARY KEY (id)

);

-- adding three categories
INSERT INTO category (name, description,image_url,is_active) VALUES ('Trousers', 'This is description for Trousers category!', 'CAT_1.png', true);
INSERT INTO category (name, description,image_url,is_active) VALUES ('Shirts', 'This is description for Shirts category!', 'CAT_2.png', true);
INSERT INTO category (name, description,image_url,is_active) VALUES ('Shoes', 'This is description for Shoes category!', 'CAT_3.png', true);

CREATE TABLE user_detail (
	id  INT NOT NULL AUTO_INCREMENT,
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
VALUES ('Kameni', 'Francis', 'ADMIN', true, 'admin', 'fkameni@gmail.com', '8888888888');
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Welyang', 'Prospere', 'SUPPLIER', true, '12345', 'pwelyang@gmail.com', '9999999999');
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Fokou', 'Ghislain', 'SUPPLIER', true, '12345', 'gfokou@gmail.com', '7777777777');
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Talla', 'Eric', 'USER', true, '12345', 'etalla@gmail.com', '1111111111');



CREATE TABLE product (
	id  INT NOT NULL AUTO_INCREMENT,
	code VARCHAR(20),
	name VARCHAR(50),
	brand VARCHAR(50),
	description VARCHAR(255),
	unit_price DECIMAL(10,2),
	quantity INT,
	is_active BOOLEAN,
	category_id INT,
	supplier_id INT,
	purchases INT DEFAULT 0,
	views INT DEFAULT 0,
	CONSTRAINT pk_product_id PRIMARY KEY (id),
 	CONSTRAINT fk_product_category_id FOREIGN KEY (category_id) REFERENCES category (id),
	CONSTRAINT fk_product_supplier_id FOREIGN KEY (supplier_id) REFERENCES user_detail(id)	
);

-- adding five products
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('PRDABC123DEFX', 'jeans', 'levis', 'This is one of the best trousers for casual outings !', 18000, 5, true, 3, 2, 0, 0 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('PRDDEF123DEFX', 'formal trousers', 'vrj', 'A formal trouser by vert route jaune!', 32000, 2, true, 3, 3, 0, 0 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('PRDPQR123WGTX', 'joggers', 'vrj', 'This is perfect for sporting activities on cool days and for warm home stay!', 57000, 5, true, 3, 2, 0, 0 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('PRDMNO123PQRX', ' track pants', 'vrj', 'Track pants are one of the essential and most proven outfits for warmer months.', 54000, 3, true, 1, 2, 0, 0 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('PRDABCXYZDEFX', 'V-neck T-shirt', 'vrj', ' This is one of the most wanted for all men. It provides both casual and formal look!', 48000, 5, true, 1, 3, 0, 0 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('PRDABCXYZFEXC', 'Polo T-shirt', 'vrj', ' Polo t-shirts are very versatile as you can wear them for golf, formal event, get-together, hanging out with friends or running errands.', 46000, 5, true, 3, 3, 0, 0 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('PRDDEF123BESV', 'sandals', 'baba', 'Sandals are one of the most essential men’s shoe styles that you need, especially in the summers.', 3000, 3, true, 2, 2, 0, 0 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('PRDDEF132CSVE', 'oxford shoes', 'baba', 'These shoes are mostly used for formal occasions only.These shoes are also called “Balmorals”.  ', 63000, 3, true, 3, 3, 0, 0 );
INSERT INTO product (code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('PRDDEF132CHDE', 'tassle loafers', 'baba', 'Loafers are lace-less shoes that are timeless when it comes to their appeal and style. ', 10000, 2, true, 3, 2, 0, 0 );
