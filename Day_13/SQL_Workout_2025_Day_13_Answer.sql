CREATE SCHEMA IF NOT EXISTS school_of_it_2025;

-- Create gifts table
CREATE TABLE school_of_it_2025.gifts_q_13 (
    gift_id SERIAL PRIMARY KEY,
    gift_name VARCHAR(100) NOT NULL,
    recipient VARCHAR(100) NOT NULL,
    weight_kg NUMERIC(5, 2) NOT NULL
);

-- Insert sample data into gifts
INSERT INTO school_of_it_2025.gifts_q_13 (gift_id, gift_name, recipient, weight_kg)
VALUES
    (1, 'Toy Train', 'John', 2.5),
    (2, 'Chocolate Box', 'Alice', 0.8),
    (3, 'Teddy Bear', 'Sophia', 1.2),
    (4, 'Board Game', 'John', 0.9);

   
 select * from school_of_it_2025.gifts_q_13;
 

SELECT recipient,
       Sum(weight_kg)
FROM   school_of_it_2025.gifts_q_13
GROUP  BY recipient; 
