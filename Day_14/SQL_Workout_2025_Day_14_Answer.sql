CREATE SCHEMA IF NOT EXISTS school_of_it_2025;

-- Create snowfall table
CREATE TABLE school_of_it_2025.snowfall_q_14 (
    resort_name VARCHAR(100) PRIMARY KEY,
    location VARCHAR(100) NOT NULL,
    snowfall_inches NUMERIC(5, 2) NOT NULL
);

-- Insert sample data into snowfall
INSERT INTO school_of_it_2025.snowfall_q_14 (resort_name, location, snowfall_inches)
VALUES
    ('Snowy Peaks', 'Colorado', 60),
    ('Winter Wonderland', 'Utah', 45),
    ('Frozen Slopes', 'Alaska', 75);

select * from school_of_it_2025.snowfall_q_14;

select 
*
from school_of_it_2025.snowfall_q_14 
where snowfall_inches > 50;
