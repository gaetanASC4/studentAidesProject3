-- JUST FYI, THE SCHEMA IS
-- vending_machine (id INTEGER PRIMARY KEY, name VARCHAR, amount INTEGER, type CHAR, cost FLOAT)

--Show all of the rows of data

SELECT * FROM vending_machine;

--Show only rows that have a type of “candy”

SELECT * FROM vending_machine WHERE type = "candy";

--Show all rows in descending order by name

SELECT * FROM vending_machine ORDER BY name ASC;

-- Show only rows that have a type of “liquid” AND have an amount under 5

SELECT * FROM vending_machine WHERE type = "liquid" AND amount < 5;

-- Show only rows that have a type of “snack” in ascending order by cost

SELECT * FROM vending_machine WHERE type = "snack" ORDER BY cost ASC;

-- BONUS: Create a new table named “snacks” with the result of the last command!

DROP TABLE IF EXISTS snacks;
CREATE TABLE snacks 
(
    id INTEGER PRIMARY KEY, 
    name VARCHAR, 
    amount INTEGER,
    type CHAR,
    cost FLOAT
);

INSERT INTO snacks SELECT * FROM vending_machine WHERE type = "snack" ORDER BY cost ASC;

-- Show the name and quantity of the least expensive item

SELECT * FROM vending_machine WHERE cost = (SELECT MIN(cost) FROM vending_machine);

-- Show the count of different items (basically the total number of rows)

SELECT COUNT(*) FROM vending_machine;

-- Show the average cost of an item as “average cost”

SELECT AVG(cost) FROM vending_machine;

-- Show the name and total cost of each item. The total cost = quantity of the item * cost

SELECT amount * cost FROM vending_machine;

-- Show all items grouped by type

SELECT *
FROM vending_machine
ORDER BY type;

-- BONUS: Show the total cost of all items in the vending machine (sum of (each item’s cost * quantity of the item)) as “total cost”

