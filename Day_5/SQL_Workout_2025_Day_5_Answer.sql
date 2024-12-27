CREATE SCHEMA IF NOT EXISTS school_of_it_2025;

select
*
from
school_of_it_2025.beach_temperature_predictions
where date = '2024-12-25'
and expected_temperature_c > 30;


