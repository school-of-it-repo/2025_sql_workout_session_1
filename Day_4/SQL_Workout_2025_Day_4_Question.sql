CREATE TABLE school_of_it_2025.ski_resorts (
    resort_id SERIAL PRIMARY KEY,
    resort_name VARCHAR(100) NOT NULL,
    region VARCHAR(100) NOT NULL
);

CREATE TABLE school_of_it_2025.snowfall (
    resort_id INT NOT NULL,
    snowfall_inches INT NOT NULL,
    FOREIGN KEY (resort_id) REFERENCES school_of_it_2025.ski_resorts(resort_id)
);


INSERT INTO school_of_it_2025.ski_resorts (resort_id, resort_name, region) VALUES
(1, 'Snowy Peaks', 'Rocky Mountains'),
(2, 'Winter Wonderland', 'Wasatch Range'),
(3, 'Frozen Slopes', 'Alaska Range'),
(4, 'Powder Paradise', 'Rocky Mountains');

INSERT INTO school_of_it_2025.snowfall (resort_id, snowfall_inches) VALUES
(1, 60),
(2, 45),
(3, 75),
(4, 55);


select * from school_of_it_2025.ski_resorts;

select * from school_of_it_2025.snowfall;


