-- Lets create a database by using
CREATE DATABASE edureka;
-- This command is used to activate the database. Here we’re activating the ‘edureka’ database
USE edureka;
-- In the above code, there are two SQL commands

-- Creating a table is as simple as creating a database.
-- Define the variables or the features of the table with their respective data types
CREATE TABLE toys (TID INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT, Item_name TEXT, Price INTEGER, Quantity INTEGER);

/*The toy table contains 4 features, namely, TID (Transaction ID), Item_name, Price and Quantity
Each variable is defined with their respective data types
The TID variable is declared as a primary key. A primary key basically denotes a variable that can store a unique value
*/

-- Check the details of the defined table
DESCRIBE toys;

-- Add data into a table by just using a single command, i.e., INSERT INTO
INSERT INTO toys VALUES (NULL, "Train", 550, 88);
INSERT INTO toys VALUES (NULL, "Hotwheels_car", 350, 80);
INSERT INTO toys VALUES (NULL, "Magic_Pencil", 70, 100);
INSERT INTO toys VALUES (NULL, "Dog_house", 120, 54);
INSERT INTO toys VALUES (NULL, "Skateboard", 700, 42);
INSERT INTO toys VALUES (NULL, "G.I. Joe", 300, 120);

/* For each observation, within the brackets, specified the value of each variable or feature was defined while creating the table.
The values entered is as per the table structure
The TID variable is set to NULL since it auto-increments from 1
*/

-- Check all the contents of the table
SELECT * FROM toys;

-- Update table value based on a certain condition
/*Let’s say that you decided to increase the price of the G.I. Joe since it is getting you a lot of customers.
How would you update the price of the variable in a database?
1. The UPDATE command allows you to modify any values/variables stored in the table.
2. The SET parameter allows you to select a particular feature and
3. the WHERE parameter is used to identify the variable/ value that you want to change
*/
UPDATE toys SET Price=350 WHERE TID=6;

-- Check the table for updated entry by checking the entire table
SELECT * FROM toys;

-- Select certain column from the table
SELECT Item_name, Price FROM toys;

-- Display the first two observations present in the table
SELECT * FROM toys LIMIT 2;

-- Lets sort the table in ascending order of values contained in 'Price' column
SELECT * FROM toys ORDER BY Price ASC;

-- Sort table by descending order of a column and display only three values
SELECT * FROM toys ORDER BY Quantity DESC LIMIT 3;

-- Slicing the table based on certain conditions
SELECT * FROM toys WHERE Price > 400 ORDER BY Price ASC;
-- This query extracts the details of the toys whose price is more than 400 and arranges the output in ascending order of the price

-- Load the customer data base locally and run the command below
select * from customers;

-- Select specific columns from the table
SELECT CustomerName, City FROM customers;  -- incorrect column name fetched
-- Check the columns of the table
SHOW columns FROM customers;
select CompanyName, City from customers;
-- Information about table metadata
show fields from customers ;
