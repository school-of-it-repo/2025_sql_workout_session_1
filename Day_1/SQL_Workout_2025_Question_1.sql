CREATE TABLE rentals (
    rental_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    activity VARCHAR(50),
    rental_date DATE
);

INSERT INTO rentals (rental_id, customer_name, activity, rental_date) VALUES
(1, 'Emily', 'Skiing', '2024-01-01'),
(2, 'Michael', 'Snowboarding', '2024-01-02'),
(3, 'Emily', 'Snowboarding', '2024-01-03'),
(4, 'Sarah', 'Skiing', '2024-01-01'),
(5, 'Michael', 'Skiing', '2024-01-02'),
(6, 'Michael', 'Snowtubing', '2024-01-02');

select 
customer_name,count(*) distinct_activites 
from rentals
group by customer_name having count(distinct activity) > 1