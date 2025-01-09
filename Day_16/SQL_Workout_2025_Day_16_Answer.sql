CREATE SCHEMA IF NOT EXISTS school_of_it_2025;

-- Create candy_sales table
CREATE TABLE school_of_it_2025.candy_sales (
    sale_id SERIAL PRIMARY KEY,
    candy_name VARCHAR(100) NOT NULL,
    quantity_sold INTEGER NOT NULL CHECK (quantity_sold >= 0),
    price_per_unit NUMERIC(5, 2) NOT NULL CHECK (price_per_unit >= 0),
    category VARCHAR(50) NOT NULL
);

-- Insert sample data into candy_sales
INSERT INTO school_of_it_2025.candy_sales (sale_id, candy_name, quantity_sold, price_per_unit, category)
VALUES
    (1, 'Candy Cane', 20, 1.5, 'Sweets'),
    (2, 'Chocolate Bar', 10, 2, 'Chocolate'),
    (3, 'Lollipop', 5, 0.75, 'Sweets'),
    (4, 'Dark Chocolate Truffle', 8, 2.5, 'Chocolate'),
    (5, 'Gummy Bears', 15, 1.2, 'Sweets'),
    (6, 'Chocolate Fudge', 12, 3, 'Chocolate');
   
 select * from school_of_it_2025.candy_sales;


select 
category,sum(quantity_sold*price_per_unit) sales
from 
school_of_it_2025.candy_sales
group by category
order by sales desc 

