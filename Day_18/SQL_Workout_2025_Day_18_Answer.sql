CREATE SCHEMA IF NOT EXISTS school_of_it_2025;

-- Create the activities table
CREATE TABLE school_of_it_2025.activities (
    activity_id SERIAL PRIMARY KEY,
    activity_name VARCHAR(255) NOT NULL
);

-- Create the activity_ratings table
CREATE TABLE school_of_it_2025.activity_ratings (
    rating_id SERIAL PRIMARY KEY,
    activity_id INT NOT NULL,
    rating NUMERIC(3, 1) NOT NULL CHECK (rating BETWEEN 0.0 AND 5.0),
    CONSTRAINT fk_activity FOREIGN KEY (activity_id) REFERENCES school_of_it_2025.activities (activity_id)
);

-- Insert sample data into activities table
INSERT INTO school_of_it_2025.activities (activity_name) VALUES
('Surfing Lessons'),
('Jet Skiing'),
('Sunset Yoga');

-- Insert sample data into activity_ratings table
INSERT INTO school_of_it_2025.activity_ratings (activity_id, rating) VALUES
(1, 4.7),
(1, 4.8),
(1, 4.9),
(2, 4.6),
(2, 4.7),
(2, 4.8),
(2, 4.9),
(3, 4.8),
(3, 4.7),
(3, 4.9),
(3, 4.8),
(3, 4.9);


select * from school_of_it_2025.activities;

select * from school_of_it_2025.activity_ratings;


SELECT a.activity_id,
       a.activity_name,
       Avg(rating)
FROM   school_of_it_2025.activities a
       INNER JOIN school_of_it_2025.activity_ratings ar
               ON a.activity_id = ar.activity_id
GROUP  BY a.activity_id,
          a.activity_name
ORDER  BY 3 DESC
LIMIT  2; 


