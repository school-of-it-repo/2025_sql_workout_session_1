CREATE SCHEMA IF NOT EXISTS school_of_it_2025;

drop table school_of_it_2025.sequence_table;


CREATE TABLE school_of_it_2025.sequence_table (
    id SERIAL PRIMARY KEY,
    value INT NOT NULL
);


INSERT INTO school_of_it_2025.sequence_table (value) VALUES
(1), (2), (3), (5), (6), (10), (11), (12), (15);


