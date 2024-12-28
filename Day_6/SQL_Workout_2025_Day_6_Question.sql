CREATE SCHEMA IF NOT EXISTS school_of_it_2025;

-- Create polar_bears table
CREATE TABLE school_of_it_2025.polar_bears (
    bear_id SERIAL PRIMARY KEY,
    bear_name VARCHAR(50) NOT NULL,
    age INT NOT NULL
);

-- Create tracking table
CREATE TABLE school_of_it_2025.tracking (
    tracking_id SERIAL PRIMARY KEY,
    bear_id INT NOT NULL,
    distance_km DECIMAL(10, 2) NOT NULL,
    date DATE NOT NULL,
    FOREIGN KEY (bear_id) REFERENCES school_of_it_2025.polar_bears (bear_id) ON DELETE CASCADE
);


-- Insert data into polar_bears table
INSERT INTO school_of_it_2025.polar_bears (bear_id, bear_name, age)
VALUES
    (1, 'Snowball', 10),
    (2, 'Frosty', 7),
    (3, 'Iceberg', 15),
    (4, 'Chilly', 5);

-- Insert data into tracking table
INSERT INTO school_of_it_2025.tracking (tracking_id, bear_id, distance_km, date)
VALUES
    (1, 1, 25, '2024-12-01'),
    (2, 2, 40, '2024-12-02'),
    (3, 1, 30, '2024-12-03'),
    (4, 3, 50, '2024-12-04'),
    (5, 2, 35, '2024-12-05'),
    (6, 4, 20, '2024-12-06'),
    (7, 3, 55, '2024-12-07'),
    (8, 1, 45, '2024-12-08');

   
select * from school_of_it_2025.polar_bears;

select * from school_of_it_2025.tracking;


