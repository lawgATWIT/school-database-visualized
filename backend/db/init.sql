DROP DATABASE IF EXISTS school;
CREATE DATABASE school;
USE school;

CREATE TABLE Students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    grade INT,
    class_id INT
);

CREATE TABLE Teachers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    subject VARCHAR(100)
);

CREATE TABLE Classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES Teachers(id)
);

CREATE TABLE Enrollments (
    student_id INT,
    class_id INT,
    PRIMARY KEY (student_id, class_id),
    FOREIGN KEY (student_id) REFERENCES Students(id),
    FOREIGN KEY (class_id) REFERENCES Classes(id)
);

-- Sample data
INSERT INTO Teachers (name, subject) VALUES 
('Alice Smith', 'Math'), 
('John Doe', 'History'),
('Emily Turner', 'Science'),
('Michael Brown', 'English'),
('Linda White', 'Art');

INSERT INTO Classes (name, teacher_id) VALUES 
('Algebra I', 1), 
('World History', 2),
('Biology', 3),
('English Literature', 4),
('Painting', 5);

INSERT INTO Students (name, grade, class_id) VALUES 
('Tom Johnson', 10, 1),
('Sara Lee', 11, 2),
('Jake Miller', 10, 3),
('Nina Patel', 12, 2),
('Carlos Gomez', 11, 4),
('Anna Kim', 9, 5),
('Brian Lee', 12, 1);

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
(5, 3);
