-- File: 02_filtering_sorting_aggregation.sql

-- Creating database
CREATE DATABASE college;
USE college;

-- Creating student table
CREATE TABLE student(
  rollno INT PRIMARY KEY,
  name VARCHAR(50),
  marks INT NOT NULL,
  grade VARCHAR(1),
  city VARCHAR(20)
);  

-- Inserting data
INSERT INTO student (rollno, name, marks, grade, city)
VALUES
(101, "Anil", 78, "C", "Pune"),
(102, "Bhumika", 93, "A", "Mumbai"),
(103, "Chetan", 85, "B", "Mumbai"),
(104, "Dhruv", 96, "A", "Delhi"),
(105, "Emanuel", 12, "F", "Delhi"),
(106, "Faran", 82, "B", "Delhi");

-- =========================
-- FILTERING
-- =========================

-- Problem: Get students not from Delhi or Mumbai
SELECT * 
FROM student 
WHERE city NOT IN ("Delhi", "Mumbai");

-- Problem: Get students with marks > 75 (limit 3 results)
SELECT * 
FROM student 
WHERE marks > 75
LIMIT 3;

-- =========================
-- SORTING
-- =========================

-- Sort by city (ascending)
SELECT * FROM student ORDER BY city ASC;

-- Sort by name (ascending)
SELECT * FROM student ORDER BY name ASC;

-- Top 3 students by marks
SELECT * 
FROM student 
ORDER BY marks DESC 
LIMIT 3;

-- =========================
-- AGGREGATE FUNCTIONS
-- =========================

-- Maximum marks
SELECT MAX(marks) FROM student;

-- Minimum marks
SELECT MIN(marks) FROM student;

-- Average marks
SELECT AVG(marks) FROM student;

-- =========================
-- GROUP BY
-- =========================

-- Count students per city
SELECT city, COUNT(name) 
FROM student 
GROUP BY city;

-- Average marks per city (sorted by avg marks)
SELECT city, AVG(marks) 
FROM student 
GROUP BY city
ORDER BY AVG(marks) ASC;

-- Average marks per city (sorted alphabetically)
SELECT city, AVG(marks) 
FROM student 
GROUP BY city
ORDER BY city ASC;

-- =========================
-- EXPLANATION
-- =========================
-- Covered concepts:
-- Filtering (WHERE, NOT IN)
-- Sorting (ORDER BY)
-- Limiting results (LIMIT)
-- Aggregations (MAX, MIN, AVG)
-- Grouping (GROUP BY)