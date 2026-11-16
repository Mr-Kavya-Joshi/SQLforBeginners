CREATE TABLE music (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  scale VARCHAR(50) NOT NULL,
  gender ENUM('Male','Female')
);

CREATE TABLE dance (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  danceform VARCHAR(50),
  address VARCHAR(50),
  gender ENUM('Male','Female')
);

INSERT INTO music (name, scale, gender)
VALUES
('Khushi', 'C','Female'),
('Guddu', 'C#','Male'),
('Jones', 'D','Male'),
('Khara', 'D#','Female'),
('Smith', 'C#','Male'),
('Zlecrov', 'D#','Male');

INSERT INTO dance (name, danceform, gender, address)
VALUES

('Khushi','Kathak','Female','Kolkata'),
('Guddu','Kathak', 'Male','Delhi'),
('Chintu','Kuchipudi', 'Male','Chennai'),
('Roshni', 'Chhau','Female','Mumbai'),
('Sonia', 'Manipuri','Female','Kolkata'),
('Jonhson','Odissi', 'Male','Delhi');

SELECT name,gender FROM music
UNION
SELECT name,gender FROM dance;

SELECT name,gender FROM music
INTERSECT
SELECT name,gender FROM dance;
--note that EXCEPT means set A-set B
SELECT name FROM music
EXCEPT
SELECT name FROM dance;
