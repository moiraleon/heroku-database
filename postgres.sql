CREATE TABLE customer(
customer_ID INTEGER PRIMARY KEY, 
first_name VARCHAR(50), 
last_name VARCHAR(50), 
email_address VARCHAR(100),
phone_number INTEGER
); DONE

INSERT INTO customer (customer_ID, first_name, last_name, email_address, phone_number) VALUES(1,'John','Doe','johndoe@gmail.com',999-888-7777),
(2,'Jane','Doe','janedoe@gmail.com',111-222-3333); DONE

SELECT * FROM customer; DONE

NEED TO UPDATE PHONE NUMBERS to non negative numbers

CREATE TABLE transactions(
transaction_ID INTEGER PRIMARY KEY, 
customer_ID INTEGER, 
FOREIGN KEY (customer_ID) REFERENCES customer(customer_ID),
product_ID INTEGER, 
FOREIGN KEY (product_ID) REFERENCES products(product_ID),
transaction_date DATE
); DONE
-- code 3=bycicle
INSERT INTO transactions (transaction_ID,customer_ID, product_ID, transaction_date) VALUES(1,1,3,'1990-01-01'),
(2,2,3,'1990-01-02');

SELECT * FROM transactions; 

CREATE TABLE products(
product_id INTEGER PRIMARY KEY,
brand VARCHAR(30),
model VARCHAR(30),
description VARCHAR(500),
price FLOAT,
quantity INTEGER
); DONE NEEDED TO BE RUN BEFORE TRANSACTIONS TABLE BD OF FOREIGN KEYS

INSERT INTO products(product_id, brand, model, description,price,quantity) VALUES(3,'TREK','Tandem','uglay',249.87,1),
(4,'SWITZERLAND','Moutain Bike','off road compatibility',989.87,1); DONE

SELECT * FROM products;
