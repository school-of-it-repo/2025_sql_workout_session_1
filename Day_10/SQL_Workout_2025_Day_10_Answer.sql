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

with _data as 
(
select 
friend_name
,count(*) as number_of_resolutions
,COUNT(*) FILTER (WHERE is_completed = TRUE) AS completed_resolutions
,round(sum(case when is_completed = true then 1 else 0 end  ) *1.0 / count(*),2) * 100 as success_perc
from school_of_it_2025.resolutions
group by friend_name

)
select 
friend_name
,number_of_resolutions
,completed_resolutions
,case 
		
when success_perc > 75 then 'Green'
when success_perc between 50 and 70 then 'Yellow'
else 'Red' end as success_category
from _data
