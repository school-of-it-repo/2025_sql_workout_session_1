create SCHEMA IF NOT EXISTS school_of_it_2025;

create TABLE school_of_it_2025.grinch_weight_log (
    log_id INT PRIMARY KEY,
    day_of_month INT NOT NULL,
    weight INT NOT NULL
);




insert into school_of_it_2025.grinch_weight_log (log_id, day_of_month, weight) values
(1, 1, 250),
(2, 2, 248),
(3, 3, 249),
(4, 4, 247),
(5, 5, 246),
(6, 6, 248);


select * from school_of_it_2025.grinch_weight_log ;



