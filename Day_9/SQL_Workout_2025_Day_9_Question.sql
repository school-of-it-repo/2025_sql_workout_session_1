create SCHEMA IF NOT EXISTS school_of_it_2025;

-- Create events table
create TABLE school_of_it_2025.events (
    event_id SERIAL PRIMARY KEY,
    event_name VARCHAR(100) NOT NULL
);

-- Create menu table
create TABLE school_of_it_2025.menu (
    dish_id SERIAL PRIMARY KEY,
    dish_name VARCHAR(100) NOT NULL,
    event_id INT NOT NULL,
    calories INT NOT NULL,
    weight_g INT NOT NULL,
    FOREIGN KEY (event_id) REFERENCES school_of_it_2025.events (event_id) ON delete CASCADE
);



-- Insert data into events table
insert into school_of_it_2025.events (event_id, event_name)
values
    (1, 'Christmas Eve Dinner'),
    (2, 'New Years Feast'),
    (3, 'Winter Solstice Potluck');

-- Insert data into menu table
insert into school_of_it_2025.menu (dish_id, dish_name, event_id, calories, weight_g)
values
    (1, 'Roast Turkey', 1, 3500, 5000),
    (2, 'Chocolate Yule Log', 1, 2200, 1000),
    (3, 'Cheese Fondue', 2, 1500, 800),
    (4, 'Holiday Fruitcake', 3, 4000, 1200),
    (5, 'Honey Glazed Ham', 2, 2800, 3500);

   
select * from school_of_it_2025.events;
 
select * from school_of_it_2025.menu;



  
  
  