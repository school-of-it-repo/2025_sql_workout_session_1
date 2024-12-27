create SCHEMA IF NOT EXISTS school_of_it_2025;

create TABLE school_of_it_2025.beach_temperature_predictions (
    beach_name VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    expected_temperature_c INT NOT NULL,
    date DATE NOT NULL
);

insert into school_of_it_2025.beach_temperature_predictions (beach_name, country, expected_temperature_c, date) values
('Bondi Beach', 'Australia', 32, '2024-12-24'),
('Copacabana Beach', 'Brazil', 28, '2024-12-24'),
('Clifton Beach', 'South Africa', 31, '2024-12-25'),
('Brighton Beach', 'New Zealand', 25, '2024-12-25');

select * from school_of_it_2025.beach_temperature_predictions;


