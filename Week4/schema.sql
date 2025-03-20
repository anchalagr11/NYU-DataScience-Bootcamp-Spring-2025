-- Create the database
CREATE DATABASE SalesDB;


-- Create the SALES table
CREATE TABLE SALES (
    Date DATE,
    Order_id INT PRIMARY KEY,
    Item_id INT,
    Customer_id INT,
    Quantity INT,
    Revenue DECIMAL(10, 2),
    FOREIGN KEY (Item_id) REFERENCES ITEMS(Item_id),
    FOREIGN KEY (Customer_id) REFERENCES CUSTOMERS(Customer_id)
);

-- Create the ITEMS table
CREATE TABLE ITEMS (
    Item_id INT PRIMARY KEY,
    Item_name VARCHAR(225),
    Price DECIMAL(10, 2),
    Department VARCHAR(50)
);

-- Create the CUSTOMERS table
CREATE TABLE CUSTOMERS (
    Customer_id INT PRIMARY KEY,
    First_name VARCHAR(100),
    Last_name VARCHAR(100),
    Address VARCHAR(255)
);

-- Insert sample data into ITEMS table
INSERT INTO ITEMS (Item_id, Item_name, Price, Department)
VALUES
(1, 'T-Shirt', 20, 'Clothing'),
(2, 'Hat', 20, 'Accessories'),
(3, 'Book', 15, 'Books'),
(4, 'Phone', 950.00, 'Electronics'),
(5, 'Headphones', 100.00, 'Electronics');

-- Insert sample data into CUSTOMERS table
INSERT INTO CUSTOMERS (Customer_id, First_name, Last_name, Address)
VALUES
(1, 'John', 'Doe', 'NYC'),
(2, 'Alice', 'Smith', 'LA'),
(3, 'Bob', 'Johnson', 'Chicago'),
(4, 'John', 'Doe', 'Boston'),
(5, 'Mary', 'Davis', 'Miami');

-- Insert sample data into SALES table
INSERT INTO SALES (Date, Order_id, Item_id, Customer_id, Quantity, Revenue)
VALUES
('2023-02-10', 106, 4, 1, 1, 950.00), 
('2023-02-12', 107, 5, 2, 2, 200.00), 
('2023-01-05', 108, 1, 3, 1, 20.00), 
('2023-01-08', 109, 3, 4, 5, 75.00), 
('2023-01-18', 110, 2, 5, 3, 60.00), 
('2022-12-15', 111, 1, 2, 1, 20.00), 
('2022-12-25', 112, 4, 3, 1, 950.00),
('2022-11-20', 113, 5, 5, 2, 200.00), 
('2023-03-01', 114, 1, 4, 3, 60.00), 
('2023-03-05', 115, 2, 1, 1, 20.00),
('2023-03-10', 116, 4, 2, 1, 950.00), 
('2023-02-25', 117, 2, 3, 2, 40.00), 
('2023-02-28', 118, 3, 1, 3, 45.00), 
('2023-01-22', 119, 5, 4, 1, 100.00),
('2023-01-30', 120, 1, 5, 2, 40.00); 