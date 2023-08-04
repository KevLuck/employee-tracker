const express = require('express');
const mysql = require('mysql');

const app = express();

const connection = mysql.createConnection({
  host: 'localhost',
  port: 3306,
  user: 'root',
  password: 'root',
  database: 'company_db',
});

app.get('/', (req, res) => {
  res.send('Welcome to the company database!');
});

app.get('/departments', (req, res) => {
  connection.query('SELECT * FROM departments', (err, rows) => {
    if (err) throw err;
    res.json(rows);
  });
});

app.get('/roles', (req, res) => {
  connection.query('SELECT * FROM roles', (err, rows) => {
    if (err) throw err;
    res.json(rows);
  });
});

app.get('/employees', (req, res) => {
  connection.query('SELECT * FROM employees', (err, rows) => {
    if (err) throw err;
    res.json(rows);
  });
});

app.listen(3000, () => {
  console.log('Server started on port 3000');
});

// This function will add a new department to the database.
function addDepartment(name) {
  connection.query('INSERT INTO departments (department) VALUES (?)', [name], (err, rows) => {
    if (err) throw err;
    res.send('Department added!');
  });
}

// This function will add a new role to the database.
function addRole(title, salary, departmentId) {
  connection.query('INSERT INTO roles (title, salary, department_id) VALUES (?, ?, ?)', [title, salary, departmentId], (err, rows) => {
    if (err) throw err;
    res.send('Role added!');
  });
}

// This function will add a new employee to the database.
function addEmployee(firstName, lastName, roleId, managerId) {
  connection.query('INSERT INTO employees (first_name, last_name, role_id, manager_id) VALUES (?, ?, ?, ?)', [firstName, lastName, roleId, managerId], (err, rows) => {
    if (err) throw err;
    res.send('Employee added!');
  });
}

// This function will get a list of all the departments in the database.
function getDepartments() {
  connection.query('SELECT * FROM departments', (err, rows) => {
    if (err) throw err;
    res.json(rows);
  });
}

// This function will get a list of all the roles in the database.
function getRoles() {
  connection.query('SELECT * FROM roles', (err, rows) => {
    if (err) throw err;
    res.json(rows);
  });
}

// This function will get a list of all the employees in the database.
function getEmployees() {
  connection.query('SELECT * FROM employees', (err, rows) => {
    if (err) throw err;
    res.json(rows);
  });
}

app.post('/departments', addDepartment);
app.post('/roles', addRole);
app.post('/employees', addEmployee);
app.get('/departments', getDepartments);
app.get('/roles', getRoles);
app.get('/employees', getEmployees);
