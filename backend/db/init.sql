DROP DATABASE IF EXISTS school;
CREATE DATABASE school;
USE school;

CREATE TABLE Departments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE Instructors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(id)
);

CREATE TABLE Students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    year INT
);

CREATE TABLE Courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id INT,
    instructor_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(id),
    FOREIGN KEY (instructor_id) REFERENCES Instructors(id)
);

CREATE TABLE Enrollments (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES Students(id),
    FOREIGN KEY (course_id) REFERENCES Courses(id)
);

-- Sample data
INSERT INTO Departments (name) VALUES 
('Mathematics'),
('History'),
('Science'),
('English'),
('Arts');

INSERT INTO Instructors (name, department_id) VALUES 
('Alice Smith', 1),
('John Doe', 2),
('Emily Turner', 3),
('Michael Brown', 4),
('Linda White', 5);

INSERT INTO Students (name, year) VALUES 
('Tom Johnson', 2),
('Sara Lee', 3),
('Jake Miller', 2),
('Nina Patel', 4),
('Carlos Gomez', 3),
('Anna Kim', 1),
('Brian Lee', 4);

INSERT INTO Courses (name, department_id, instructor_id) VALUES 
('Algebra I', 1, 1),
('World History', 2, 2),
('Biology', 3, 3),
('English Literature', 4, 4),
('Painting', 5, 5),
('Geometry', 1, 1),
('Chemistry', 3, 3);

INSERT INTO Enrollments VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 2),
(5, 4),
(1, 2),
(2, 1),
(3, 1),
(4, 5),
(5, 3),
(6, 6),
(7, 7);
