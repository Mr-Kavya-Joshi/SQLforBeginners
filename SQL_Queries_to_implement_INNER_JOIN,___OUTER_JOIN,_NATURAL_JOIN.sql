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

-- INNER JOIN
SELECT *
FROM music
INNER JOIN dance
ON music.name = dance.name;

-- LEFT JOIN (outer)
SELECT *
FROM music
LEFT JOIN dance
ON music.name = dance.name;

-- RIGHT JOIN (outer)
SELECT *
FROM music
RIGHT JOIN dance
ON music.name = dance.name;

-- NATURAL JOIN
SELECT *
FROM music
NATURAL JOIN dance;
