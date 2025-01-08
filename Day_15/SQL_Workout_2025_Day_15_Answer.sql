CREATE SCHEMA IF NOT EXISTS school_of_it_2025;

-- Create family_members table
CREATE TABLE school_of_it_2025.family_members_q_15 (
    member_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INTEGER NOT NULL CHECK (age >= 0)
);

-- Insert sample data into family_members
INSERT INTO school_of_it_2025.family_members_q_15 (member_id, name, age)
VALUES
    (1, 'Alice', 30),
    (2, 'Bob', 58),
    (3, 'Charlie', 33),
    (4, 'Diana', 55),
    (5, 'Eve', 5),
    (6, 'Frank', 60),
    (7, 'Grace', 32),
    (8, 'Hannah', 8),
    (9, 'Ian', 12),
    (10, 'Jack', 3);

-- Create parent_child_relationships table
CREATE TABLE school_of_it_2025.parent_child_relationships (
    parent_id INTEGER NOT NULL,
    child_id INTEGER NOT NULL,
    PRIMARY KEY (parent_id, child_id),
    FOREIGN KEY (parent_id) REFERENCES school_of_it_2025.family_members_q_15(member_id) ON DELETE CASCADE,
    FOREIGN KEY (child_id) REFERENCES school_of_it_2025.family_members_q_15(member_id) ON DELETE CASCADE
);

-- Insert sample data into parent_child_relationships
INSERT INTO school_of_it_2025.parent_child_relationships (parent_id, child_id)
VALUES
    (2, 1),
    (3, 5),
    (4, 1),
    (6, 7),
    (6, 8),
    (7, 9),
    (7, 10),
    (4, 8);
   
 select * from school_of_it_2025.family_members_q_15;


select * from school_of_it_2025.parent_child_relationships;


SELECT parent_id,
       name,
       Count(*) AS _total_members
FROM   school_of_it_2025.parent_child_relationships pcr
       INNER JOIN school_of_it_2025.family_members_q_15 fm
               ON fm.member_id = pcr.parent_id
GROUP  BY parent_id,
          name
ORDER  BY _total_members DESC
LIMIT  3; 


