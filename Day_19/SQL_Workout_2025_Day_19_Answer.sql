CREATE SCHEMA IF NOT EXISTS school_of_it_2025;

-- Create the polar_bears table
CREATE TABLE school_of_it_2025.polar_bears_q_19 (
    bear_id SERIAL PRIMARY KEY,
    bear_name VARCHAR(255) NOT NULL,
    age INT NOT NULL CHECK (age > 0)
);

-- Create the meal_log table
CREATE TABLE school_of_it_2025.meal_log (
    log_id SERIAL PRIMARY KEY,
    bear_id INT NOT NULL,
    food_type VARCHAR(255) NOT NULL,
    food_weight_kg NUMERIC(5, 2) NOT NULL CHECK (food_weight_kg > 0),
    date DATE NOT NULL,
    CONSTRAINT fk_bear FOREIGN KEY (bear_id) REFERENCES school_of_it_2025.polar_bears_q_19 (bear_id)
);

-- Insert sample data into polar_bears table
INSERT INTO school_of_it_2025.polar_bears_q_19 (bear_name, age) VALUES
('Snowball', 10),
('Frosty', 7),
('Iceberg', 15);

-- Insert sample data into meal_log table
INSERT INTO school_of_it_2025.meal_log (bear_id, food_type, food_weight_kg, date) VALUES
(1, 'Seal', 30, '2024-12-01'),
(2, 'Fish', 15, '2024-12-02'),
(1, 'Fish', 10, '2024-12-03'),
(3, 'Seal', 25, '2024-12-04'),
(2, 'Seal', 20, '2024-12-05'),
(3, 'Fish', 18, '2024-12-06');


select * from school_of_it_2025.polar_bears_q_19;

select * from school_of_it_2025.meal_log;


SELECT pb.bear_name,
       Max(food_weight_kg) biggest_meal_kg
FROM   school_of_it_2025.polar_bears_q_19 pb
       INNER JOIN school_of_it_2025.meal_log ml
               ON pb.bear_id = ml.bear_id
WHERE  To_char(date, 'YYYY-MM') = '2024-12'
GROUP  BY pb.bear_id,
          pb.bear_name
ORDER  BY 2 DESC; 