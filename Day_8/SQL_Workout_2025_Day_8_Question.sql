CREATE SCHEMA IF NOT EXISTS school_of_it_2025;


CREATE TABLE school_of_it_2025.gifts_q_8 (
    gift_id SERIAL PRIMARY KEY,
    gift_name VARCHAR(100) NOT NULL,
    recipient_type VARCHAR(50) NOT NULL CHECK (recipient_type IN ('good', 'naughty')),
    weight_kg DECIMAL(10, 2) NOT NULL
);

-- Insert data into gifts table
INSERT INTO school_of_it_2025.gifts_q_8 (gift_id, gift_name, recipient_type, weight_kg)
VALUES
    (1, 'Toy Train', 'good', 2.5),
    (2, 'Lumps of Coal', 'naughty', 1.5),
    (3, 'Teddy Bear', 'good', 1.2),
    (4, 'Chocolate Bar', 'good', 0.3),
    (5, 'Board Game', 'naughty', 1.8);


select * from school_of_it_2025.gifts_q_8;

