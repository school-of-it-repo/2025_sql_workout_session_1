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


select 
  sale_date, 
  sum(sale_amount), 
  round(
    sum(sale_amount)/ sum(
      sum(sale_amount)
    ) over() * 100, 
    2
  ) as sales_percentage 
from 
  school_of_it_2025.sales_interview_question_3 
group by 
  sale_date 
order by 
  1;





WITH daily_sales AS (
    SELECT 
        sale_date,
        SUM(sale_amount) AS total_sales
    FROM school_of_it_2025.sales_interview_question_3
    GROUP BY sale_date
),
total_sales_overall AS (
    SELECT SUM(total_sales) AS total_sales_all
    FROM daily_sales
)
SELECT 
    ds.sale_date,
    ds.total_sales,
    ROUND((ds.total_sales / tso.total_sales_all) * 100, 2) AS sales_percentage
FROM daily_sales ds
CROSS JOIN total_sales_overall tso
ORDER BY ds.sale_date;
