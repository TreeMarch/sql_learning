CREATE DATABASE MSSQL_Assignment01
GO
--------------
CREATE TABLE Customer(
	customer_id VARCHAR(8) PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	address NVARCHAR(100) ,
	tel VARCHAR(20),
	status VARCHAR(20)
);
CREATE TABLE orders(
	order_id INT IDENTITY PRIMARY KEY ,
	customer_id  VARCHAR(8),
	order_date DATE , 
	status VARCHAR(20),
	FOREIGN KEY (customer_id) REFERENCES  Customer(customer_id)
);

CREATE TABLE Products(
	ProductID INT IDENTITY PRIMARY KEY ,
	name VARCHAR(100),
	description VARCHAR(200),
	unit NVARCHAR(20) ,
	price VARCHAR(20),
	quantity INT ,
	status VARCHAR(20)
);
CREATE TABLE orderDetail(
	order_id INT ,
	ProductID INT ,
	price  VARCHAR(20),
	quantity INT,
	FOREIGN KEY (order_id) REFERENCES orders(order_id),
	FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
INSERT INTO Products(name, description,unit,price) VALUES ('Máy Tính T450','Máy Nhập Mới','Chiếc',1000);
INSERT INTO Products(name, description,unit,price) VALUES ('Điện Thoại Nokia 5670','Điện thoại đang hot','Chiếc',200);
INSERT INTO Products(name, description,unit,price) VALUES ('Máy In SAMSUNG450','Máy In Đang ế','Chiếc',100);
-------------------------
INSERT INTO Customer(customer_id,name,address,tel) VALUES ('1','Nguyễn Văn A','111 Nguyễn Trãi, Thanh Xuân, Hà Nội','987654321');
INSERT INTO Customer(customer_id,name,address,tel) VALUES ('2','Trần Thị B','Cầu Giấy, Hà Nội','970576846');
SELECT * FROM Customer;
-------------------------
INSERT INTO orders(customer_id,order_date) VALUES ('1','11/18/09');
------------------------
INSERT INTO orderDetail(order_id,ProductID,price,quantity )VALUES (1,1,'1000',1);
INSERT INTO orderDetail(order_id,ProductID,price,quantity )VALUES (1,2,'400',2);
INSERT INTO orderDetail(order_id,ProductID,price,quantity )VALUES (1,3,'100',1);
-----------------------

SELECT customer_id,name FROM Customer;
SELECT name,description,unit,price FROM Products;
SELECT * FROM orderDetail;
-----------------------
SELECT name FROM Customer
ORDER BY name ASC; 
SELECT * FROM Products WHERE price > 0
ORDER BY price DESC;

