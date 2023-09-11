--This statement inserts a row into the `departments` table with the name `Sales`.INSERT INTO departments(name)VALUES('Sales');

--This statement inserts a row into the `departments` table with the name `Marketing`.INSERT INTO departments(
    name
)VALUES('Marketing');

--This statement inserts a row into the `departments` table with the name `Development`.INSERT INTO departments(
    name
)VALUES('Development');

--This statement inserts a row into the `departments` table with the name `Finance`.INSERT INTO departments(
    name
)VALUES('Finance');

--This statement inserts a row into the `roles` table with the title `CEO`,
a salary of 100000,
and a null department_id.INSERT INTO roles(title, salary, department_id)VALUES(
    'CEO',
    100000,
    NULL
);

--This statement inserts a row into the `roles` table with the title `CFO`,
a salary of 75000,
and a null department_id.INSERT INTO roles(title, salary, department_id)VALUES(
    'CFO',
    75000,
    NULL
);

--This statement inserts a row into the `roles` table with the title `CTO`,
a salary of 65000,
and a null department_id.INSERT INTO roles(title, salary, department_id)VALUES(
    'CTO',
    65000,
    NULL
);

--This statement inserts a row into the `roles` table with the title `Sales Manager`,
a salary of 50000,
and a department_id of 1.
INSERT INTO roles(title, salary, department_id)VALUES(
    'Sales Manager',
    50000,
    1
);

--This statement inserts a row into the `roles` table with the title `Marketing Manager`,
a salary of 45000,
and a department_id of 2.
INSERT INTO roles(title, salary, department_id)VALUES(
    'Marketing Manager',
    45000,
    2
);

--This statement inserts a row into the `roles` table with the title `Developer`,
a salary of 35000,
and a department_id of 3.
INSERT INTO roles(title, salary, department_id)VALUES('Developer', 35000, 3);

--This statement inserts a row into the `roles` table with the title `Accountant`,
a salary of 30000,
and a department_id of 4.
INSERT INTO roles(title, salary, department_id)VALUES('Accountant', 30000, 4);

--This statement inserts a row into the `employees` table with the first name `John`,
the last name `Doe`,
a role_id of 1,
and a manager_id of NULL.INSERT INTO employees(
    first_name,
    last_name,
    role_id,
    manager_id
)VALUES('John', 'Doe', 1, NULL);

--This statement inserts a row into the `employees` table with the first name `Jane`,
the last name `Doe`,
a role_id of 2,
and a manager_id of 1.
INSERT INTO employees(first_name, last_name, role_id, manager_id)VALUES(
    'Jane',
    'Doe',
    2,
    1
);

--This statement inserts a row into the `employees` table with the first name `Peter`,
the last name `Smith`,
a role_id of 3,
and a manager_id of 2.
INSERT INTO employees(first_name, last_name, role_id, manager_id)VALUES(
    'Peter',
    'Smith',
    3,
    2
);

--This statement inserts a row into the `employees` table with the first name `Susan`,
the last name `Jones`,
a role_id of 4,
and a manager_id of 2.
INSERT INTO employees(first_name, last_name, role_id, manager_id)VALUES(
    'Susan',
    'Jones',
    4,
    2
);