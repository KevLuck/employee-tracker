-- This file contains queries that you can use to interact with the database.

-- Get a list of all the departments in the database.
-- This query will return all the rows in the `departments` table.
SELECT * FROM departments;

-- Get a list of all the roles in the database.
-- This query will return all the rows in the `roles` table.
SELECT * FROM roles;

-- Get a list of all the employees in the database.
-- This query will return all the rows in the `employees` table.
SELECT * FROM employees;

-- Get a list of all the employees in a specific department.
-- This query will return all the rows in the `employees` table where the `department_id` column is equal to 1.
SELECT * FROM employees
WHERE department_id = 1;

-- Get a list of all the employees who have a specific role.
-- This query will return all the rows in the `employees` table where the `role_id` column is equal to 1.
SELECT * FROM employees
WHERE role_id = 1;

-- Get a list of all the employees who are managed by a specific employee.
-- This query will return all the rows in the `employees` table where the `manager_id` column is equal to 1.
SELECT * FROM employees
WHERE manager_id = 1;

-- Get a list of all the employees in the "Sales" department.
-- This query will return all the rows in the `employees` table where the `department` column is equal to "Sales".
SELECT * FROM employees
WHERE department = "Sales";

-- Get a list of all the employees who have the "Sales Manager" role.
-- This query will return all the rows in the `employees` table where the `title` column is equal to "Sales Manager".
SELECT * FROM employees
WHERE title = "Sales Manager";

-- Get a list of all the employees who are managed by the employee with the ID 1.
-- This query will return all the rows in the `employees` table where the `manager_id` column is equal to 1.
SELECT * FROM employees
WHERE manager_id = 1;

-- Get a list of all the employees who have been with the company for more than 5 years.
-- This query will return all the rows in the `employees` table where the `hire_date` column is less than 5 years ago.
SELECT * FROM employees
WHERE hire_date < NOW() - INTERVAL 5 YEAR;

-- Get a list of all the employees who have a salary of more than $100,000.
-- This query will return all the rows in the `employees` table where the `salary` column is greater than 100000.
SELECT * FROM employees
WHERE salary > 100000;

-- Get a list of all the employees who are located in the "San Francisco" office.
-- This query will return all the rows in the `employees` table where the `office` column is equal to "San Francisco".
SELECT * FROM employees
WHERE office = "San Francisco";
