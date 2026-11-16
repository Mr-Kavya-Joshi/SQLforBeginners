CREATE TABLE sellers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50),
  gender ENUM('Male','Female'),
  date_of_birth DATE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO sellers(name, email, gender)
VALUES
('Khushi', 'khushi@yahoo.com','Female'),
('Guddu', 'guddu89@gmail.com','Male'),
('Jones', 'jones56@gmail.com','Male'),
('Khara', 'khara@yahoo.com','Female'),
('Smith', 'smith89@gmail.com','Male'),
('Zlecrov', 'Zlecrov56@gmail.com','Male');

SELECT name, email FROM sellers WHERE email LIKE '%yahoo%';
SELECT name, email FROM sellers WHERE name LIKE 'g%';
