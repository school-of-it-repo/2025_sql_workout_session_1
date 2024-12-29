CREATE SCHEMA IF NOT EXISTS school_of_it_2025;


-- Create vendors table
CREATE TABLE school_of_it_2025.vendors (
    vendor_id SERIAL PRIMARY KEY,
    vendor_name VARCHAR(100) NOT NULL,
    market_location VARCHAR(100) NOT NULL
);

-- Create sales table
CREATE TABLE school_of_it_2025.sales (
    sale_id SERIAL PRIMARY KEY,
    vendor_id INT NOT NULL,
    item_name VARCHAR(100) NOT NULL,
    quantity_sold INT NOT NULL,
    price_per_unit DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (vendor_id) REFERENCES school_of_it_2025.vendors (vendor_id) ON DELETE CASCADE
);



-- Insert data into vendors table
INSERT INTO school_of_it_2025.vendors (vendor_id, vendor_name, market_location)
VALUES
    (1, 'Cozy Crafts', 'Downtown Square'),
    (2, 'Sweet Treats', 'Central Park'),
    (3, 'Winter Warmers', 'Downtown Square');

-- Insert data into sales table
INSERT INTO school_of_it_2025.sales (sale_id, vendor_id, item_name, quantity_sold, price_per_unit)
VALUES
    (1, 1, 'Knitted Scarf', 15, 25),
    (2, 2, 'Hot Chocolate', 50, 3.5),
    (3, 3, 'Wool Hat', 20, 18),
    (4, 1, 'Handmade Ornament', 10, 15),
    (5, 2, 'Gingerbread Cookie', 30, 5);
   
   
 select * from school_of_it_2025.vendors;

 select * from school_of_it_2025.sales;
 
