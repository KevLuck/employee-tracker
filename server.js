const mysql = require('mysql2');
const inquirer = require('inquirer');

const connection = mysql.createConnection(
    {host: 'localhost', user: 'root', password: 'pass123', database: 'company_db'}
);

connection.connect((err) => {
    if (err) {
        console.error(err);
        process.exit(1);
    }

    console.log('Connected to database');

    connection.query('USE company_db', (err, results) => {
        if (err) {
            console.error(err);
        }
    });

    const departments = [];
    const roles = [];
    const employees = [];

    const loadData = () => {
        connection.query('SELECT * FROM departments', (err, results) => {
            if (err) {
                console.error(err);
            } else {
                departments = results.rows;
            }
        });

        connection.query('SELECT * FROM roles', (err, results) => {
            if (err) {
                console.error(err);
            } else {
                roles = results.rows;
            }
        });

        connection.query('SELECT * FROM employees', (err, results) => {
            if (err) {
                console.error(err);
            } else {
                employees = results.rows;
            }
        });
    };

    const main = async () => {
        connection.query('CREATE DATABASE company_db');

        connection.query(
            `
      CREATE TABLE departments (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(255) NOT NULL
      );
    `,
            (err) => {
                if (err) {
                    console.error(err);
                }
            }
        );

        connection.query(
            `
      CREATE TABLE roles (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(255) NOT NULL
      );
    `,
            (err) => {
                if (err) {
                    console.error(err);
                }
            }
        );

        connection.query(
            `
      CREATE TABLE employees (
        id INT AUTO_INCREMENT PRIMARY KEY,
        first_name VARCHAR(255) NOT NULL,
        last_name VARCHAR(255) NOT NULL,
        email VARCHAR(255) NOT NULL,
        department_id INT NOT NULL,
        role_id INT NOT NULL
      );
    `,
            (err) => {
                if (err) {
                    console.error(err);
                }
            }
        );

        loadData();

        const questions = [
            {
                type: 'list',
                name: 'action',
                message: 'What do you want to do?',
                choices: [
                    'View all departments',
                    'View all roles',
                    'View all employees',
                    'Add a department',
                    'Add a role',
                    'Add an employee',
                    'Update an employee role'
                ],
                encoding: 'utf8'
            }
        ];

        const answer = await inquirer.prompt(questions);
    }

    main()
})
