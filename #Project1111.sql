DROP DATABASE CollegeDB;
CREATE DATABASE CollegeDB;
USE CollegeDB;
CREATE TABLE Tutor (
    tutor_id INT PRIMARY KEY AUTO_INCREMENT,
	first_name varchar(50),
	last_name varchar (50),
    email varchar (100) not null,
    hire_date date,
    hourly_rate decimal (5,2)
    );
    
create table course (
	course_id  INT PRIMARY KEY,
    course_name varchar (50),
    credits INT default 3,
    tutor_id INT, 
	foreign key (tutor_id) REFERENCES Tutor(tutor_id) #??
    );
    
create table students (
	student_id int PRIMARY key,
    f_name varchar (50),
    l_name varchar (50),
    s_gpa decimal (3,2)
    );
    
alter table students
	add constraint chk_gpa
    CHECK (s_gpa >= 0.00 AND s_gpa <= 4.00); #??
    
INSERT INTO Tutor (first_name, last_name, email, hire_date, hourly_rate)
VALUES 
('Ali', 'Hassan', 'ali.hassan@gmail.com', '2022-01-15', 50.00),
('Sara', 'Ahmed', 'sara.ahmed@gmail.com', '2023-03-10', 60.50),
('Omar', 'Youssef', 'omar.y@gmail.com', '2021-09-01', 45.75);

INSERT INTO Course (course_id, course_name, credits, tutor_id)
VALUES
(1, 'Math', 3, 1),
(2, 'Physics', 4, 2),
(3, 'Programming', 3, 3),
(4, 'Databases', 3, 1);

INSERT INTO students (student_id, f_name, l_name, s_gpa)
VALUES
(1, 'Ali', 'Hassan', 3.20),
(2, 'Sara', 'Ahmed', 3.80),
(3, 'Omar', 'Youssef', 2.90),
(4, 'Mona', 'Khaled', 3.50),
(5, 'Nour', 'Mahmoud', 4.00); 

update Tutor
set hourly_rate = 105.00
where tutor_id = 3;

delete from students
where student_id = 3;

select * from students;

select * from students
where s_gpa > 3.00;

# Note: To run this SQL script, make sure MySQL Server is running and connect to a database first.