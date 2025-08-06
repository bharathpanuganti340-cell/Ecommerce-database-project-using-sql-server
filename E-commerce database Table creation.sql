-----CREATING A DATABASE ECOMMERCE -----

CREATE DATABASE Ecommerce

----USERS TABLE CREATION----

CREATE TABLE USERS
(
     userID INT PRIMARY KEY,
     username VARCHAR(255) NOT NULL,
     email VARCHAR(255) UNIQUE NOT NULL,
     shipping_address TEXT,
     billing_address TEXT
  )

----ORDERS TABLE CREATION----

CREATE TABLE ORDERS
(
    orderID INT PRIMARY KEY,
	userID INT NOT NULL,
	order_date DATETIME NOT NULL,
	total_amount DECIMAL(10,2) NOT NULL,
	order_status VARCHAR(100) NOT NULL,
	
	FOREIGN KEY(userID) REFERENCES USERS(userID)
	)

-----PRODUCTS TABLE CREATION-----
CREATE TABLE PRODUCTS
(
     productID INT PRIMARY KEY,
	 product_name VARCHAR(255) NOT NULL,
	 price DECIMAL(10,2) NOT NULL,
	 stock_quantity INT NOT NULL,
)

-----ORDER ITEMS TABLE CREATION-----

CREATE TABLE ORDER_ITEMS
(
    order_item_ID VARCHAR(255) PRIMARY KEY,
	orderID INT NOT NULL,
	productID INT NOT NULL,
	quantity INT NOT NULL,
	unit_price DECIMAL(10,2) NOT NULL,

	FOREIGN KEY (orderID) REFERENCES ORDERS(orderID),
	FOREIGN KEY (productID) REFERENCES PRODUCTS(productID)
	)
