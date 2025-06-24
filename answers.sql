/* Q1 */
CREATE TABLE customers (CustomerID INT PRIMARY KEY, CustomerName VARCHAR(255));
CREATE TABLE products (ProductID INT PRIMARY KEY, ProductName VARCHAR(255));
CREATE TABLE orders 
(OrderID INT PRIMARY KEY, CustomerID INT, ProductID INT,
FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID),
FOREIGN KEY (ProductID) REFERENCES products(ProductID));

/* Q2 */
CREATE TABLE Orders 
(OrderID INT PRIMARY KEY,CustomerName VARCHAR(255) NOT NULL);

CREATE TABLE OrderItems
(OrderID INT, Product VARCHAR(255) NOT NULL, Quantity INT NOT NULL,
PRIMARY KEY (OrderID, Product),
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID));