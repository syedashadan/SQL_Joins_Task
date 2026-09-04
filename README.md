# Task 5: SQL Joins

## Objective
Learn to combine data from multiple tables using different types of SQL joins.

## Tools Used
- VS Code
- SQLite

## Tables Created

### Customers
- customer_id
- name
- city

### Orders
- order_id
- customer_id
- product
- amount

## SQL Joins Demonstrated

1. INNER JOIN
2. LEFT JOIN
3. RIGHT JOIN
4. FULL OUTER JOIN

## Description

### INNER JOIN
Displays only the records that have matching values in both tables.

### LEFT JOIN
Displays all records from the Customers table and matching records from the Orders table.

### RIGHT JOIN
Displays all records from the Customers table along with matching order records.

### FULL OUTER JOIN
Displays all records from both tables, including unmatched records.

## Files

- `joins.sql` - SQL queries for creating tables, inserting data, and performing joins.
- `joins.db` - SQLite database containing the tables and data.
- `README.md` - Project documentation.