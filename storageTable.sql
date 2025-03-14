use companyDatabase;
create table storageTable(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50),
category VARCHAR(50)
);

-- Sample data for storageTable
INSERT INTO storageTable (name, category) VALUES
('Laptop', 'Electronics'),
('T-Shirt', 'Clothing'),
('Coffee Mug', 'Kitchen'),
('Running Shoes', 'Sports'),
('Desk Lamp', 'Furniture');

select * from storageTable;