-- PQ1.sql

-- Creating database

CREATE DATABASE nice;
USE nice;

-- Creating employee table
CREATE TABLE employee(
  id INT PRIMARY KEY,
  name VARCHAR(50),
  salary INT NOT NULL
);  

-- Inserting data
INSERT INTO employee
(id, name, salary)
VALUES
(1, "Adam", 10000),
(2, "bob", 20000),
(3, "cassey", 30000);

-- Fetching all records
SELECT * FROM employee;

-- Explanation:
-- This script creates a database, a table, inserts sample data,
-- and retrieves all records from the employee table.