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
('Khushi', 'khushi@yahoo.com','Female'),
('Guddu', 'guddu89@gmail.com','Male'),
('Jones', 'jones56@gmail.com','Male'),
('Khara', 'khara@yahoo.com','Female'),
('Smith', 'smith89@gmail.com','Male'),
('Zlecrov', 'Zlecrov56@gmail.com','Male'),
('Mona', 'Mona@yahoo.com','Female'),
('Samuel', 'Samuel89@gmail.com','Male'),
('Chintu', 'Chintu56@gmail.com','Male'),
('Roshni', 'Roshni@yahoo.com','Female'),
('Sonia', 'sonia89@gmail.com','Female'),
('Jonhson', 'jonhson6@gmail.com','Male');

ALTER TABLE users
DROP COLUMN date_of_birth;

ALTER TABLE users
ADD column is_active BOOLEAN DEFAULT TRUE;

SELECT *FROM users;
