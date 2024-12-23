CREATE SCHEMA IF NOT EXISTS school_of_it_2025;

-- Create the 'employee' table
CREATE TABLE school_of_it_2025.employee_tiger_q_1 (
    employee_id SERIAL PRIMARY KEY,  -- Unique ID for each employee
    name VARCHAR(50) NOT NULL,       -- Employee's name
    manager_id INT,                  -- ID of the manager (NULL for the CEO)
    salary NUMERIC(10, 2) NOT NULL,  -- Employee's salary
    CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES school_of_it_2025.employee_tiger_q_1(employee_id) ON DELETE SET NULL
);

-- Insert sample data into the 'employee' table
INSERT INTO school_of_it_2025.employee_tiger_q_1 (employee_id, name, manager_id, salary) VALUES
(1, 'Alice', NULL, 100000),  -- CEO
(2, 'Bob', 1, 80000),
(3, 'Charlie', 1, 75000),
(4, 'David', 2, 60000),
(5, 'Eve', 2, 50000),
(6, 'Frank', 3, 55000);

select * from school_of_it_2025.employee_tiger_q_1;
