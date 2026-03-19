-- Create a new table called persons with columns: id, person_name, birth_date, and phone
CREATE table persons(
id INT NOT NULL,
person_name VARCHAR(50) NOT NULL,
bith_date DATE,
phone VARCHAR(15) NOT NULL,
CONSTRAINT pk_persons PRIMARY KEY(id)
)


-- add email column to the persons table
ALTER table persons
ADD email VARCHAR(50) NOT NULL

-- delete phone cloumn from persons table
ALTER table persons
DROP COLUMN phone;


-- delete the persons table from the database
DROP table persons;

-- lets add some data(rows) to the customers table
INSERT INTO customers
VALUES 
	(6,'ram','USA',NULL),
	(7,'satya',NULL,100),
	(8,'USA', 'hari', 100)

select * from customers;
