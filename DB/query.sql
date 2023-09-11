--This statement drops the `company_db` database if it already exists.DROP DATABASE IF EXISTS company_db;

--This statement creates the `company_db` database.CREATE DATABASE company_db;

--This statement sets the current database to `company_db`.USE company_db;

--This statement creates the `departments` table.CREATE TABLE departments(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)NOT NULL
);

--This statement creates the `roles` table.CREATE TABLE roles(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)NOT NULL
);

--This statement creates the `employees` table.CREATE TABLE employees(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)NOT NULL,
    department_id INT NOT NULL,
    role_id INT NOT NULL
);

--This statement adds a foreign key constraint to the `employees` table.The `department_id` column in the `employees` table references the `id` column in the `departments` table.ALTER TABLE employees ADD FOREIGN KEY(
    department_id
)REFERENCES departments(id);

--This statement adds a foreign key constraint to the `employees` table.The `role_id` column in the `employees` table references the `id` column in the `roles` table.ALTER TABLE employees ADD FOREIGN KEY(
    role_id
)REFERENCES roles(id);