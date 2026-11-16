CREATE TABLE employees (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50),
  gender ENUM('Male','Female'),
  salary INT NOT NULL,
  date_of_birth DATE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE housekeeping (
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

INSERT INTO housekeeping(name, email, gender,salary)
VALUES
('Monu', 'monu@yahoo.com','Female',10000),
('Sonu', 'sonu89@gmail.com','Male',20000),
('Raja', 'raja6@gmail.com','Male',5000),
('Babu', 'babu@yahoo.com','Male',5000);

SELECT name, email 
FROM employees
WHERE salary>20000;

SELECT e.name, e.salary
FROM employees e
JOIN housekeeping h ON e.salary = h.salary
WHERE e.gender = 'Female';
