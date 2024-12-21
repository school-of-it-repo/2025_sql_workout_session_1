CREATE SCHEMA IF NOT EXISTS school_of_it_2025;

CREATE TABLE school_of_it_2025.rentals (
    rental_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    activity VARCHAR(50),
    rental_date DATE
);

INSERT INTO school_of_it_2025.rentals (rental_id, customer_name, activity, rental_date) VALUES
(1, 'Emily', 'Skiing', '2024-01-01'),
(2, 'Michael', 'Snowboarding', '2024-01-02'),
(3, 'Emily', 'Snowboarding', '2024-01-03'),
(4, 'Sarah', 'Skiing', '2024-01-01'),
(5, 'Michael', 'Skiing', '2024-01-02'),
(6, 'Michael', 'Snowtubing', '2024-01-02');

