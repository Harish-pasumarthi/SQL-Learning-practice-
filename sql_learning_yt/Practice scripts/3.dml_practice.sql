-- creating persons table
/*CREATE TABLE persons(
id INT NOT NULL,
person_name VARCHAR(50) NOT NULL,
birth_date DATE,
phone VARCHAR(15) NOT NULL
CONSTRAINT pk_persons PRIMARY KEY (id)
)*/


-- insert date from customers to persons
INSERT INTO persons (id,person_name,birth_date,phone)
SELECT
	id,
	first_name,
	NULL,
	'unknown'
FROM customers

SELECT * FROM customers

-- Change the score of customer 6 to 0
UPDATE customers
	SET score = 0
WHERE id=6

SELECT score
FROM customers
WHERE id=6;

-- Change the country to uk and score to 200 of id=7 in customers table

SELECT *
FROM customers
WHERE id=7;

UPDATE customers
	SET country = 'UK',
		score = 200
WHERE id=7;

-- update all  NULL scores to 0 in customers table
SELECT score
FROM customers
WHERE score=0;

UPDATE customers
	SET score=0
WHERE score=NULL;

-- delete customers where id greater than 5
SELECT * FROM customers
WHERE id>5;

DELETE FROM customers
WHERE id>5;

-- delete all data from the table persons
DELETE FROM persons;
SELECT * FROM persons;