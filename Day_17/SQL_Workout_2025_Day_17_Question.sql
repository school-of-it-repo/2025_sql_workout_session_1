CREATE SCHEMA IF NOT EXISTS school_of_it_2025;


CREATE TABLE school_of_it_2025.grinch_pranks (
    prank_id SERIAL PRIMARY KEY,
    prank_name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    difficulty VARCHAR(50) CHECK (difficulty IN ('Beginner', 'Advanced', 'Expert'))
);

-- Insert sample data
INSERT INTO school_of_it_2025.grinch_pranks (prank_name, location, difficulty) VALUES
('Stealing Stockings', 'Whoville', 'Beginner'),
('Christmas Tree Topple', 'Whoville Town Square', 'Advanced'),
('Present Swap', 'Cindy Lous House', 'Beginner'),
('Sleigh Sabotage', 'Mount Crumpit', 'Expert'),
('Chimney Block', 'Mayors Mansion', 'Expert');


select * from school_of_it_2025.grinch_pranks;





