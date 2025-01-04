CREATE SCHEMA IF NOT EXISTS school_of_it_2025;

CREATE TABLE school_of_it_2025.family_members (
    member_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    relationship VARCHAR(50) NOT NULL,
    birthday DATE NOT NULL
);

-- Insert sample data
INSERT INTO school_of_it_2025.family_members (member_id, name, relationship, birthday)
VALUES
    (1, 'Dawn', 'Sister', '2024-12-24'),
    (2, 'Bob', 'Father', '2024-05-20'),
    (3, 'Charlie', 'Brother', '2024-12-25'),
    (4, 'Diana', 'Mother', '2024-03-15');
   
select 
	*
from 
	school_of_it_2025.family_members
where 
	to_char(birthday,'YYYY-MM') ='2024-12'
	
