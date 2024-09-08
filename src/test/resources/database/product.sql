-- Drop the Product table if it exists
DROP TABLE IF EXISTS Product;

-- Create the Product table

CREATE TABLE Product (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL
);

-- Inserting products into the Product table
INSERT INTO Product (name, description, price) VALUES
('Smartphone', 'A high-end smartphone with 128GB storage.', 699.99),
('Laptop', '15-inch laptop with 16GB RAM and 512GB SSD.', 1199.00),
('Headphones', 'Noise-cancelling wireless headphones.', 199.99),
('Camera', 'Mirrorless camera with 4K video recording.', 899.50),
('Smartwatch', 'Fitness-focused smartwatch with heart rate monitor.', 149.95);
