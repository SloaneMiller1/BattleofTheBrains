use companyDatabase;
create table orders(
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    FKCustomerID INT, -- Add the FKCustomerID column
    FKItemID INT, -- Add the FKItemID column
    orderTime DATETIME,
    orderDelivered VARCHAR(25),
    FOREIGN KEY (FKCustomerID) REFERENCES customerInformation(id), -- Corrected Reference to PK_id
    FOREIGN KEY (FKItemID) REFERENCES storageTable(id)
);
-- Sample data for orders
INSERT INTO orders (FKCustomerID, FKItemID, orderTime, orderDelivered) VALUES
(1, 1, '2023-11-02 10:00:00', 'delivered'), -- Customer 1 orders Laptop (delivered)
(2, 2, '2023-11-02 11:30:00', 'not delivered'), -- Customer 2 orders T-Shirt (not delivered)
(3, 3, '2023-11-02 13:45:00', 'delivered'), -- Customer 3 orders Coffee Mug (delivered)
(4, 4, '2023-11-02 15:20:00', 'not delivered'), -- Customer 4 orders Running Shoes (not delivered)
(5, 5, '2023-11-02 17:10:00', 'delivered'); -- Customer 5 orders Desk Lamp (delivered)
select * from orders;