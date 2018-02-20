-- If a database named “students” already exists, delete it
-- Create a database named “students” with the following schema:
--      id (should be the PRIMARY KEY when making new row)
--      name (example: “Mahdi Shadkamfarrokhi”)
--      age (example: 32)
--      cohort (example: “Bond Collective”)
--      grade (example: 12)
--      fav_hobby (example: “coding”)

-- CREATE TABLE students(
--     studentID INTEGER PRIMARY KEY,
--     name TEXT,
--     age INTEGER,
--     cohort TEXT,
--     grade INTEGER,
--     fav_hobby TEXT
-- );
-- Commented out the create table because it was trying to re-create the table every time
-- --INSERT INTO students 
-- (name, age, cohort, grade, fav_hobby)
-- VALUES
-- ("Bob Bobbington", 15, "Goldman Sachs", 11, "eating"),
-- ("Juan Pablo", 17, "JPMC", 12, "gaming"),
-- ("Jerry Mathews", 16, "Bond Collective", 11, "coding"),
-- ("Anthony Quinn", 15, "Yahoo", 11, "bowling"),
-- ("Kevin Calderon", 17, "Bond Collective", 12, "styling");

UPDATE students 
SET cohort = "Facebook"
WHERE studentID = 4;

UPDATE students 
SET age = 16    
WHERE studentID = 2; 

UPDATE students 
SET fav_hobby = "stuntin"    
WHERE studentID = 5; 
-- Make the following modifications (as a separate command) to the “students” database:
--      Change Anthony Quinn’s cohort to “Facebook”
--      Change Juan Pablo’s age to 16
--      Change Kevin Calderon’s fav_hobby to “stuntin’”

-- BONUS:
--      Add yourself to the database!
--      Have the fav_hobby have a default of “dabbing” if no value is given
