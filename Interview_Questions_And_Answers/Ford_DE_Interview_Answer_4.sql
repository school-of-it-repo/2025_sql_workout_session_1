/* FORD data Engineer Interview Question */

create SCHEMA IF NOT EXISTS school_of_it_2025;

drop table school_of_it_2025.sequence_table;


create TABLE school_of_it_2025.sequence_table (
    id SERIAL PRIMARY KEY,
    value INT NOT NULL
);


insert into school_of_it_2025.sequence_table (value) values
(1), (2), (3), (5), (6), (10), (11), (12), (15);


select * from school_of_it_2025.sequence_table;


with _source_data_1 as 
(select id,
        value,
        value - row_number ()
                  over(
                    order by id ) as _seq_number
 from   school_of_it_2025.sequence_table)

select min(value) as start_range,
       max(value) as end_range
from   _source_data_1
group  by _seq_number
order  by _seq_number

