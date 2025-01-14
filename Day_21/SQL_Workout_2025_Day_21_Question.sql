CREATE SCHEMA IF NOT EXISTS school_of_it_2025;


CREATE TABLE school_of_it_2025.gifts_q_21 (
    gift_id SERIAL PRIMARY KEY,
    gift_name VARCHAR(255) NOT NULL,
    recipient_type VARCHAR(50) NOT NULL CHECK (recipient_type IN ('good', 'naughty')),
    weight_kg NUMERIC(5, 2) NOT NULL CHECK (weight_kg > 0)
);


INSERT INTO school_of_it_2025.gifts_q_21 (gift_name, recipient_type, weight_kg) VALUES
('Toy Train', 'good', 2.5),
('Lumps of Coal', 'naughty', 1.5),
('Teddy Bear', 'good', 1.2),
('Chocolate Bar', 'good', 0.3),
('Board Game', 'naughty', 1.8);


select * from school_of_it_2025.gifts_q_21;


