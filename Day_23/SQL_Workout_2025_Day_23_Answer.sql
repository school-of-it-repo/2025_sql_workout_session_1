CREATE SCHEMA IF NOT EXISTS school_of_it_2025;

CREATE TABLE school_of_it_2025.grinch_weight_log (
    log_id INT PRIMARY KEY,
    day_of_month INT NOT NULL,
    weight INT NOT NULL
);




INSERT INTO school_of_it_2025.grinch_weight_log (log_id, day_of_month, weight) VALUES
(1, 1, 250),
(2, 2, 248),
(3, 3, 249),
(4, 4, 247),
(5, 5, 246),
(6, 6, 248);


select * from school_of_it_2025.grinch_weight_log ;


SELECT log_id,
       day_of_month,
       weight,
       weight - Lag(weight)
                  OVER(
                    ORDER BY log_id ) previous_day_weight
FROM   school_of_it_2025.grinch_weight_log ;
