/* TCS data Engineer Interview Question */

CREATE SCHEMA IF NOT EXISTS school_of_it_2025;


-- Create the visiting table
CREATE TABLE school_of_it_2025.visiting (
    visitor_id INT NOT NULL,
    visiting_place VARCHAR(255) NOT NULL,
    visiting_date DATE,
    PRIMARY KEY (visitor_id, visiting_place, visiting_date)
);



-- Insert data into the visiting table
INSERT INTO school_of_it_2025.visiting (visitor_id, visiting_place, visiting_date) VALUES
(1, 'Goa', '2024-12-01'),
(2, 'Mumbai', '2024-11-15'),
(3, 'Delhi', '2024-11-20'),
(2, 'Goa', '2024-12-05'),
(4, 'Pune', '2024-10-10');


select * from school_of_it_2025.visiting;


