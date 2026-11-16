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

SELECT * FROM employees
WHERE salary IN(
  SELECT salary
  FROM employees
  WHERE gender = 'Male'
);

SELECT * FROM employees
WHERE salary NOT IN(
  SELECT salary
  FROM employees
  WHERE gender = 'Male'
);

SELECT * FROM employees
WHERE salary>SOME(
  SELECT salary
  FROM employees
  WHERE gender = 'Male'
);

SELECT * FROM employees
WHERE salary>ALL(
  SELECT salary
  FROM employees
  WHERE gender = 'Male'  
);
