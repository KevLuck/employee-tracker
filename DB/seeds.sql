-- This file contains SQL statements that will seed the database with some initial data.

-- Create a department named "Sales".
INSERT INTO departments (department)
VALUES ("Sales");

-- Create a role named "Sales Manager".
INSERT INTO roles (title)
VALUES ("Sales Manager");

-- Create an employee named "John Doe" with the title "Sales Manager" and a salary of $100,000.
INSERT INTO employees (first_name, last_name, title, salary, manager_id)
VALUES ("John", "Doe", "Sales Manager", 100000, NULL);

-- Create an employee named "Jane Doe" with the title "Sales Representative" and a salary of $50,000.
INSERT INTO employees (first_name, last_name, title, salary, manager_id)
VALUES ("Jane", "Doe", "Sales Representative", 50000, 1);

-- Create a department named "Marketing".
INSERT INTO departments (department)
VALUES ("Marketing");

-- Create a role named "Marketing Manager".
INSERT INTO roles (title)
VALUES ("Marketing Manager");

-- Create an employee named "Mary Smith" with the title "Marketing Manager" and a salary of $90,000.
INSERT INTO employees (first_name, last_name, title, salary, manager_id)
VALUES ("Mary", "Smith", "Marketing Manager", 90000, NULL);

-- Create an employee named "Peter Jones" with the title "Marketing Representative" and a salary of $40,000.
INSERT INTO employees (first_name, last_name, title, salary, manager_id)
VALUES ("Peter", "Jones", "Marketing Representative", 40000, 2);

-- This code will seed the database with some initial data. You can use this data to test your queries and learn more about the database.
