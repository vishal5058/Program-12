CREATE DATABASE IF NOT EXISTS CollegeDB;
USE CollegeDB;

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Department VALUES
(10, 'Computer Science'),
(20, 'Mathematics'),
(30, 'Commerce');


CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR(50)
);

INSERT INTO Faculty VALUES
(1, 'Dr. Kumar'),
(2, 'Dr. Priya'),
(3, 'Dr. Arun');


CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID)
);

INSERT INTO Student VALUES
(1001, 'Arun', 10),
(1002, 'Priya', 20),
(1003, 'Kumar', 10),
(1004, 'Nisha', 30);


CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    FacultyID INT,
    FOREIGN KEY (FacultyID)
        REFERENCES Faculty(FacultyID)
);

INSERT INTO Course VALUES
(201, 'Database Systems', 1),
(202, 'Data Structures', 2),
(203, 'Mathematics', 2),
(204, 'Computer Networks', 3);


CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID)
        REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID)
);

INSERT INTO Enrollment VALUES
(1, 1001, 201),
(2, 1001, 202),
(3, 1002, 203),
(4, 1003, 201),
(5, 1004, 204);
