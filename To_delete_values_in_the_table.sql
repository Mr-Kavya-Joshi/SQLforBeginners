CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50),
  gender ENUM('Male','Female'),
  date_of_birth DATE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM users;

INSERT INTO users(name, email, gender)
VALUES
('Khushi','khushi@yahoo.com','Female'),
('Guddu', 'guddu89@gmail.com','Male'),
('Jones', 'jones56@gmail.com','Male');

SELECT * FROM users;

DELETE FROM users WHERE id='2';
SELECT *FROM users;
