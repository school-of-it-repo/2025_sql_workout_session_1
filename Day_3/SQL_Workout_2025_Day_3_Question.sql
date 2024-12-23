CREATE TABLE school_of_it_2025.candy_nutrition (
    candy_id SERIAL PRIMARY KEY,
    candy_name VARCHAR(100) NOT NULL,
    calories INT NOT NULL,
    candy_category VARCHAR(50) NOT NULL
);

INSERT INTO school_of_it_2025.candy_nutrition (candy_id, candy_name, calories, candy_category) VALUES
(1, 'Candy Cane', 200, 'Sweets'),
(2, 'Chocolate Bar', 250, 'Chocolate'),
(3, 'Gingerbread Cookie', 150, 'Baked Goods'),
(4, 'Lollipop', 100, 'Sweets'),
(5, 'Dark Chocolate Truffle', 180, 'Chocolate'),
(6, 'Marshmallow', 900, 'Sweets'),
(7, 'Sugar Cookie', 140, 'Baked Goods');

select * from school_of_it_2025.candy_nutrition;


