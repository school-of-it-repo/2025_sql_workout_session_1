CREATE SCHEMA IF NOT EXISTS school_of_it_2025;

CREATE TABLE school_of_it_2025.sales_interview_question_3 (
    sale_id SERIAL PRIMARY KEY,
    sale_date DATE NOT NULL,
    sale_amount NUMERIC(10, 2) NOT NULL
);


INSERT INTO school_of_it_2025.sales_interview_question_3 (sale_date, sale_amount) VALUES
('2025-01-01', 500),
('2025-01-01', 300),
('2025-01-02', 700),
('2025-01-02', 200),
('2025-01-03', 1000),
('2025-01-03', 300),
('2025-01-04', 400);


select * from school_of_it_2025.sales_interview_question_3;
