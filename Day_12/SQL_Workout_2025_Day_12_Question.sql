create SCHEMA IF NOT EXISTS school_of_it_2025;


-- Create snow_globes table
create TABLE school_of_it_2025.snow_globes (
    globe_id SERIAL PRIMARY KEY,
    globe_name VARCHAR(100) NOT NULL,
    volume_cm3 INTEGER NOT NULL,
    material VARCHAR(50) NOT NULL
);

-- Insert sample data into snow_globes
insert into school_of_it_2025.snow_globes (globe_id, globe_name, volume_cm3, material)
values
    (1, 'Winter Wonderland', 500, 'Glass'),
    (2, 'Santas Workshop', 300, 'Plastic'),
    (3, 'Frozen Forest', 400, 'Glass'),
    (4, 'Holiday Village', 600, 'Glass');

-- Create figurines table
create TABLE school_of_it_2025.figurines (
    figurine_id SERIAL PRIMARY KEY,
    globe_id INTEGER NOT NULL,
    figurine_type VARCHAR(50) NOT NULL,
    FOREIGN KEY (globe_id) REFERENCES school_of_it_2025.snow_globes(globe_id) ON delete CASCADE
);

-- Insert sample data into figurines
insert into school_of_it_2025.figurines (figurine_id, globe_id, figurine_type)
values
    (1, 1, 'Snowman'),
    (2, 1, 'Tree'),
    (3, 2, 'Santa Claus'),
    (4, 2, 'Elf'),
    (5, 2, 'Gift Box'),
    (6, 3, 'Reindeer'),
    (7, 3, 'Tree'),
    (8, 4, 'Snowman'),
    (9, 4, 'Santa Claus'),
    (10, 4, 'Tree'),
    (11, 4, 'Elf'),
    (12, 4, 'Gift Box');

   
select * from school_of_it_2025.snow_globes;

select * from school_of_it_2025.figurines;




