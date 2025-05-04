CREATE TABLE colleges (
colleges_id SERIAL PRIMARY KEY,
colleges_name VARCHAR NOT NULL,
address VARCHAR,
city VARCHAR,
pincode INTEGER NOT NULL,
established_year INTEGER DEFAULT 0
);

select * from colleges

insert into colleges (colleges_name, address, city, pincode, established_year)
values ('Ramdeobaba College of Eng And Management', 'Katol Road', 'Nagpur', 440001, 1992)

insert into colleges (colleges_name, address, city, pincode, established_year)
values 
('Yashwantrao Chavan College of Eng', 'Wanadongri', 'Nagpur', 440002, 1994)

insert into colleges (colleges_name, address, city, pincode, established_year)
values 
('Nagpur Institute of Tech', 'Khapri', 'Nagpur', 440008, 1987)

insert into colleges (colleges_name, address, city, pincode, established_year)
values 
('Vishweshwarya Institute of Tech', 'IT Park', 'Nagpur', 440010, 1993)


create table departments (
department_id SERIAL PRIMARY KEY,
colleges_id INTEGER NOT NULL,
department_name VARCHAR NOT NULL,
head_of_department VARCHAR,
building_location VARCHAR,
total_faculty INTEGER DEFAULT 0,
FOREIGN KEY (school_id) REFERENCES colleges(colleges_id)
);

select * from departments

insert into  departments (college_id, department_name, head_of_department, building_location, total_faculty)
values(1, 'OOPS', 'Dr. Sharma', 'Science Block A', 12)

insert into  departments (college_id, department_name, head_of_department, building_location, total_faculty)
value(2, 'DS', 'Mrs. Verma', 'Mathematics Block B', 10)

insert into  departments (college_id, department_name, head_of_department, building_location, total_faculty)
values(3, 'JAVA', 'Mr. Jones', 'Humanities Building', 8)

insert into  departments (college_id, department_name, head_of_department, building_location, total_faculty)
value(4, 'DBMS', 'Ms. Davis', 'Humanities Building', 6)

insert into  departments (college_id, department_name, head_of_department, building_location, total_faculty)
value(5, 'Computer Science', 'Mr. Singh', 'Technology Center', 15)

select * from departments

create table students (
student_id SERIAL PRIMARY KEY,
colleges_id INTEGER NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
date_of_birth DATE,
grade_level VARCHAR,
enrollment_date DATE,
FOREIGN KEY (college_id) REFERENCES colleges(college_id)
);

select * from students

insert into students (college_id, first_name, last_name, date_of_birth, grade_level, enrollment_date) 
values (1, 'Amit', 'Patel', '2008-05-10', '10th', '2024-09-01')

insert into students (college_id, first_name, last_name, date_of_birth, grade_level, enrollment_date) 
values (2, 'Priya', 'Verma', '2007-11-22', '11th', '2023-09-01')

insert into students (college_id, first_name, last_name, date_of_birth, grade_level, enrollment_date) 
values (3, 'Susan', 'Williams', '2009-01-15', '9th', '2024-09-01')

insert into students (college_id, first_name, last_name, date_of_birth, grade_level, enrollment_date) 
values(4, 'David', 'Miller', '2008-08-01', '10th', '2024-09-01')

insert into students (college_id, first_name, last_name, date_of_birth, grade_level, enrollment_date) 
values(5, 'Karan', 'Gupta', '2007-03-25', '11th', '2023-09-01')

select * from students

create table teachers (
teacher_id SERIAL PRIMARY KEY,
department_id INTEGER NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
subject_taught VARCHAR,
email VARCHAR ,
hire_date DATE,
FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

select * from teachers

insert into teachers (department_id, first_name, last_name, subject_taught, email, hire_date)
values (1, 'Rajesh', 'Sharma', 'Physics', 'rajesh.sharma@cityhigh.edu', '2020-07-15'),
(2, 'Smita', 'Verma', 'Chemistry', 'smita.verma@cityhigh.edu', '2021-08-01'),
(3, 'John', 'Jones', 'Literature', 'john.jones@stannes.edu', '2019-05-20'),
(4, 'Linda', 'Davis', 'World History', 'linda.davis@stannes.edu', '2022-01-10'),
(5, 'Anil', 'Singh', 'Programming', 'anil.singh@modernpublic.edu', '2023-09-01');

select * from teachers

create table enrollments (
enrollment_id SERIAL PRIMARY KEY,
student_id INTEGER NOT NULL,
course_id INTEGER,
enrollment_date DATE NOT NULL,
grade VARCHAR,
semester VARCHAR,
FOREIGN KEY (student_id) REFERENCES students(student_id)
);

select * from enrollments

insert into enrollments (student_id, course_id, enrollment_date, grade, semester) 
values (1, 101, '2024-09-01', 'A', 'Fall 2024'),
(2, 102, '2024-09-01', 'B+', 'Fall 2024'),
(3, 101, '2024-09-01', 'A-', 'Fall 2024'),
(4, 103, '2024-09-01', 'B', 'Fall 2024'),
(5, 102, '2024-09-01', 'C+', 'Fall 2024');

select * from enrollments