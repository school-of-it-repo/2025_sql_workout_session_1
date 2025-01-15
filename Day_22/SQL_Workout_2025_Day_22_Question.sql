create SCHEMA IF NOT EXISTS school_of_it_2025;


-- Create the guests table
create TABLE school_of_it_2025.guests (
    guest_id SERIAL PRIMARY KEY, -- Automatically increments guest_id
    guest_name VARCHAR(255) NOT NULL -- Stores the guest's name
);

-- Create the guest_gifts table
create TABLE school_of_it_2025.guest_gifts (
    gift_id SERIAL PRIMARY KEY, -- Automatically increments gift_id
    guest_id INT NOT NULL, -- Foreign key linking to the guests table
    gift_name VARCHAR(255) NOT NULL, -- Stores the name of the gift
    CONSTRAINT fk_guest FOREIGN KEY (guest_id) REFERENCES school_of_it_2025.guests (guest_id) ON delete CASCADE
);


-- Insert data into the guests table
insert into school_of_it_2025.guests (guest_id, guest_name) values
(1, 'Cindy Lou'),
(2, 'The Grinch'),
(3, 'Max the Dog'),
(4, 'Mayor May Who');

-- Insert data into the guest_gifts table
insert into school_of_it_2025.guest_gifts (gift_id, guest_id, gift_name) values
(1, 1, 'Toy Train'),
(2, 1, 'Plush Bear'),
(3, 2, 'Bag of Coal'),
(4, 2, 'Sleigh Bell'),
(5, 3, 'Dog Treats');

select * from school_of_it_2025.guests ;

select * from school_of_it_2025.guest_gifts ;



