create SCHEMA IF NOT EXISTS school_of_it_2025;

-- Create the activities table
create TABLE school_of_it_2025.activities (
    activity_id SERIAL PRIMARY KEY,
    activity_name VARCHAR(255) NOT NULL
);

-- Create the activity_ratings table
create TABLE school_of_it_2025.activity_ratings (
    rating_id SERIAL PRIMARY KEY,
    activity_id INT NOT NULL,
    rating NUMERIC(3, 1) NOT NULL CHECK (rating BETWEEN 0.0 AND 5.0),
    CONSTRAINT fk_activity FOREIGN KEY (activity_id) REFERENCES school_of_it_2025.activities (activity_id)
);

-- Insert sample data into activities table
insert into school_of_it_2025.activities (activity_name) values
('Surfing Lessons'),
('Jet Skiing'),
('Sunset Yoga');

-- Insert sample data into activity_ratings table
insert into school_of_it_2025.activity_ratings (activity_id, rating) values
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




