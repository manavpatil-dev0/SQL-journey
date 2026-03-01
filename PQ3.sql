-- File: 03_groupby_payment.sql

-- Creating database
CREATE DATABASE bank;
USE bank;

-- Creating payment table
CREATE TABLE payment (
  customer_id INT PRIMARY KEY,
  customer VARCHAR(50),
  payment_mode VARCHAR(20),
  city VARCHAR(30)
);

-- Inserting data
INSERT INTO payment (customer_id, customer, payment_mode, city)
VALUES
(101, "Olivia Barret", "Netbanking", "Portland"),
(102, "Ethan Sinclair", "Credit Card", "Miami"),
(103, "Maya Hernandez", "Credit Card", "Seattle"),
(104, "Liam Donovan", "Netbanking", "Denver"),
(105, "Sophia Nguyen", "Credit Card", "New Orleans"),
(106, "Caleb Foster", "Debit Card", "Minneapolis"),
(107, "Ava Patel", "Debit Card", "Phoenix"),
(108, "Lucas Carter", "Netbanking", "Boston"),
(109, "Isabella Martinez", "Netbanking", "Nashville"),
(110, "Jackson Brooks", "Credit Card", "Boston");

-- =========================
-- GROUP BY
-- =========================

-- Problem: Count number of customers per payment mode
SELECT payment_mode, COUNT(customer) 
FROM payment 
GROUP BY payment_mode;

-- =========================
-- EXPLANATION
-- =========================
-- GROUP BY groups rows based on payment_mode
-- COUNT(customer) counts number of customers in each group