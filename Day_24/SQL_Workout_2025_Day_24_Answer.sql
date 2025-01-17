create SCHEMA IF NOT EXISTS school_of_it_2025;

create TABLE school_of_it_2025.deliveries (
    delivery_date DATE NOT NULL,
    gifts_delivered INT NOT NULL
);


insert into school_of_it_2025.deliveries (delivery_date, gifts_delivered) values
('2024-12-20', 120),
('2024-12-21', 150),
('2024-12-22', 200),
('2024-12-23', 300),
('2024-12-24', 500);


select * from school_of_it_2025.deliveries ;


select 
    delivery_date
    ,gifts_delivered
    ,sum(gifts_delivered) over(order by delivery_date ) running_total
from 
school_of_it_2025.deliveries;
