CREATE SCHEMA IF NOT EXISTS school_of_it_2025;


-- Create the vendors table
CREATE TABLE school_of_it_2025.vendors_q_20 (
    vendor_id SERIAL PRIMARY KEY,
    vendor_name VARCHAR(255) NOT NULL,
    market_location VARCHAR(255) NOT NULL
);

-- Create the item_prices table
CREATE TABLE school_of_it_2025.item_prices (
    item_id SERIAL PRIMARY KEY,
    vendor_id INT NOT NULL,
    item_name VARCHAR(255) NOT NULL,
    price_usd NUMERIC(10, 2) NOT NULL CHECK (price_usd > 0),
    CONSTRAINT fk_vendor FOREIGN KEY (vendor_id) REFERENCES school_of_it_2025.vendors_q_20 (vendor_id)
);

-- Insert sample data into vendors table
INSERT INTO school_of_it_2025.vendors_q_20 (vendor_name, market_location) VALUES
('Cozy Crafts', 'Downtown Square'),
('Sweet Treats', 'Central Park'),
('Winter Warmers', 'Downtown Square');

-- Insert sample data into item_prices table
INSERT INTO school_of_it_2025.item_prices (vendor_id, item_name, price_usd) VALUES
(1, 'Knitted Scarf', 25),
(2, 'Hot Chocolate', 5),
(2, 'Gingerbread Cookie', 3.5),
(3, 'Wool Hat', 18),
(3, 'Santa Pin', 2);



select * from school_of_it_2025.vendors_q_20 ;

select * from school_of_it_2025.item_prices;



SELECT DISTINCT vendor_name
FROM   school_of_it_2025.vendors_q_20 v
       INNER JOIN school_of_it_2025.item_prices ip
               ON v.vendor_id = ip.vendor_id
WHERE  price_usd < 10 ;