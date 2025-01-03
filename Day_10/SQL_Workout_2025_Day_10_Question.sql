CREATE SCHEMA IF NOT EXISTS school_of_it_2025;

-- Create resolutions table
CREATE TABLE school_of_it_2025.resolutions (
    resolution_id SERIAL PRIMARY KEY,
    friend_name VARCHAR(100) NOT NULL,
    resolution TEXT NOT NULL,
    is_completed BOOLEAN NOT NULL
);

-- Insert data into resolutions table
INSERT INTO school_of_it_2025.resolutions (resolution_id, friend_name, resolution, is_completed)
VALUES
    (1, 'Alice', 'Exercise daily', TRUE),
    (2, 'Alice', 'Read 20 books', FALSE),
    (3, 'Bob', 'Save money', FALSE),
    (4, 'Bob', 'Eat healthier', TRUE),
    (5, 'Charlie', 'Travel more', TRUE),
    (6, 'Charlie', 'Learn a new skill', TRUE),
    (7, 'Diana', 'Volunteer monthly', TRUE),
    (8, 'Diana', 'Drink more water', FALSE),
    (9, 'Diana', 'Sleep 8 hours', TRUE);
   
 select * from school_of_it_2025.resolutions;


