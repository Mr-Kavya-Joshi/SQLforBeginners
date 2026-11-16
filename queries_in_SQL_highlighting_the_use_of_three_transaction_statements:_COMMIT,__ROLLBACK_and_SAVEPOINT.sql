CREATE TABLE employees (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50),
  gender ENUM('Male','Female'),
  salary INT NOT NULL,
  date_of_birth DATE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO employees(name, email, gender,salary)
VALUES
('Khushi', 'khushi@yahoo.com','Female',10000),
('Guddu', 'guddu89@gmail.com','Male',20000),
('Jones', 'jones56@gmail.com','Male',30000),
('Khara', 'khara@yahoo.com','Female',40000),
('Smith', 'smith89@gmail.com','Male',50000),
('Zlecrov', 'Zlecrov56@gmail.com','Male',60000);

START TRANSACTION;
UPDATE employees
SET name = 'Khushi Gupta' WHERE id = 1;
UPDATE employees
SET name = 'Gudiya' WHERE id = 2;
COMMIT;

SELECT * FROM employees;

START TRANSACTION;
DELETE FROM employees WHERE id = 2;
ROLLBACK;

SELECT * FROM employees;

START TRANSACTION;
INSERT INTO employees(name, email, gender,salary)
VALUES
('Joshi', 'joshi@yahoo.com','Male',10000);
SAVEPOINT s1;
UPDATE employees
SET name = 'Arzoo' WHERE id = 4;
DELETE FROM employees WHERE id = 5;
SAVEPOINT s2;
ROLLBACK TO s1;

SELECT * FROM employees;
