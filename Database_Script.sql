CREATE DATABASE MAD;
USE MAD;
CREATE TABLE Student (
    student_id VARCHAR(255) PRIMARY KEY,
    email VARCHAR(255),
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    password VARCHAR(255),
    section CHAR,
    semester INT,
    specialization VARCHAR(255)
);

INSERT INTO Student (student_id, email, first_name, last_name, password, section, semester, specialization)
VALUES ('S001', 'rajesh.sharma@example.com', 'Rajesh', 'Sharma', 'password1', 'A', 1, 'CSE');

INSERT INTO Student (student_id, email, first_name, last_name, password, section, semester,specialization)
VALUES ('S002', 'neha.patel@example.com', 'Neha', 'Patel', 'password2', 'B', 1, 'EEE');

INSERT INTO Student (student_id, email, first_name, last_name, password, section,semester, specialization)
VALUES ('S003', 'sandeep.kumar@example.com', 'Sandeep', 'Kumar', 'password3', 'A', 1, 'ECE');

INSERT INTO Student (student_id, email, first_name, last_name, password, section, semester,specialization)
VALUES ('S004', 'priya.singh@example.com', 'Priya', 'Singh', 'password4', 'C',1,  'CSE');

INSERT INTO Student (student_id, email, first_name, last_name, password, section, semester,specialization)
VALUES ('S005', 'vikram.yadav@example.com', 'Vikram', 'Yadav', 'password5', 'B',1,  'EEE');

INSERT INTO Student (student_id, email, first_name, last_name, password, section,semester, specialization)
VALUES ('S006', 'ananya.gupta@example.com', 'Ananya', 'Gupta', 'password6', 'A', 1, 'ECE');

INSERT INTO Student (student_id, email, first_name, last_name, password, section,semester, specialization)
VALUES ('S007', 'mohit.verma@example.com', 'Mohit', 'Verma', 'password7', 'B', 1, 'CSE');

INSERT INTO Student (student_id, email, first_name, last_name, password, section, semester,specialization)
VALUES ('S008', 'poonam.joshi@example.com', 'Poonam', 'Joshi', 'password8', 'C',1,  'EEE');

INSERT INTO Student (student_id, email, first_name, last_name, password, section, semester,specialization)
VALUES ('S009', 'rahul.singh@example.com', 'Rahul', 'Singh', 'password9', 'A', 1, 'ECE');

INSERT INTO Student (student_id, email, first_name, last_name, password, section, semester,specialization)
VALUES ('S010', 'kavya.sharma@example.com', 'Kavya', 'Sharma', 'password10', 'C', 1, 'CSE');


CREATE TABLE Faculty (
    teacher_id VARCHAR(255) PRIMARY KEY,
    email VARCHAR(255),
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    password VARCHAR(255),
    role VARCHAR(255)
);

INSERT INTO Faculty (teacher_id, email, first_name, last_name, password, role)
VALUES ('T001', 'amit.verma@example.com', 'Amit', 'Verma', 'password1', 'Assistant Professor');

INSERT INTO Faculty (teacher_id, email, first_name, last_name, password, role)
VALUES ('T002', 'radhika.sharma@example.com', 'Radhika', 'Sharma', 'password2', 'Researcher');

INSERT INTO Faculty (teacher_id, email, first_name, last_name, password, role)
VALUES ('T003', 'siddharth.gupta@example.com', 'Siddharth', 'Gupta', 'password3', 'Professor');

INSERT INTO Faculty (teacher_id, email, first_name, last_name, password, role)
VALUES ('T004', 'aishwarya.patel@example.com', 'Aishwarya', 'Patel', 'password4', 'Assistant Professor');

INSERT INTO Faculty (teacher_id, email, first_name, last_name, password, role)
VALUES ('T005', 'manoj.yadav@example.com', 'Manoj', 'Yadav', 'password5', 'Researcher');

INSERT INTO Faculty (teacher_id, email, first_name, last_name, password, role)
VALUES ('T006', 'nisha.joshi@example.com', 'Nisha', 'Joshi', 'password6', 'Professor');

INSERT INTO Faculty (teacher_id, email, first_name, last_name, password, role)
VALUES ('T007', 'rahul.sharma@example.com', 'Rahul', 'Sharma', 'password7', 'Assistant Professor');

INSERT INTO Faculty (teacher_id, email, first_name, last_name, password, role)
VALUES ('T008', 'neetu.gupta@example.com', 'Neetu', 'Gupta', 'password8', 'Researcher');

INSERT INTO Faculty (teacher_id, email, first_name, last_name, password, role)
VALUES ('T009', 'vivek.singh@example.com', 'Vivek', 'Singh', 'password9', 'Professor');

INSERT INTO Faculty (teacher_id, email, first_name, last_name, password, role)
VALUES ('T010', 'pooja.mishra@example.com', 'Pooja', 'Mishra', 'password10', 'Assistant Professor');

CREATE TABLE Course (
	course_code VARCHAR(255) PRIMARY KEY,
    course_title VARCHAR(255)
);


INSERT INTO Course (course_code, course_title)
VALUES ('19CSE311', 'Computer Security');

INSERT INTO Course (course_code, course_title)
VALUES ('19CSE312', 'Principles of programming languages');

INSERT INTO Course (course_code, course_title)
VALUES ('19CSE313', 'Distributed Systems');


INSERT INTO Course (course_code, course_title)
VALUES ('19CSE314', 'Software Engineering');


INSERT INTO Course (course_code, course_title)
VALUES ('19CSE435', 'Computer Vision');

INSERT INTO Course (course_code, course_title)
VALUES ('19ECE343', 'Introduction to ECE');

INSERT INTO Course (course_code, course_title)
VALUES ('19EEE112', 'Basics of electrical circuits');	

CREATE TABLE Faculty_Class (
    course_code VARCHAR(255),
    section VARCHAR(255),
    teacher_id VARCHAR(255),
    PRIMARY KEY (course_code, teacher_id),
    FOREIGN KEY (teacher_id) REFERENCES Faculty(teacher_id),
    FOREIGN KEY (course_code) REFERENCES Course(course_code)
);

INSERT INTO Faculty_Class (course_code, section, teacher_id)
VALUES ('19CSE311', 'A', 'T001');

INSERT INTO Faculty_Class (course_code, section, teacher_id)
VALUES ('19CSE312', 'B', 'T002');

INSERT INTO Faculty_Class (course_code, section, teacher_id)
VALUES ('19CSE313', 'C', 'T003');

INSERT INTO Faculty_Class (course_code, section, teacher_id)
VALUES ('19CSE314', 'D', 'T004');

INSERT INTO Faculty_Class (course_code, section, teacher_id)
VALUES ('19CSE435', 'E', 'T005');

INSERT INTO Faculty_Class (course_code, section, teacher_id)
VALUES ('19ECE343', 'F', 'T006');

INSERT INTO Faculty_Class (course_code, section, teacher_id)
VALUES ('19EEE112', 'G', 'T007');


INSERT INTO Faculty_Class (course_code, section, teacher_id)
VALUES ('19CSE311', 'M', 'T008');

INSERT INTO Faculty_Class (course_code, section, teacher_id)
VALUES ('19CSE312', 'B', 'T009');

INSERT INTO Faculty_Class (course_code, section, teacher_id)
VALUES ('19CSE313', 'C', 'T010');


CREATE TABLE Class_Enrollment (
    course_code VARCHAR(255),
    section VARCHAR(255),
    student_id VARCHAR(255),
    PRIMARY KEY (course_code, student_id),
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (course_code) REFERENCES Course(course_code)
);
INSERT INTO Class_Enrollment (course_code, section, student_id)
VALUES ('19CSE311', 'A', 'S001');


INSERT INTO Class_Enrollment (course_code, section, student_id)
VALUES ('19CSE312', 'B', 'S002');


INSERT INTO Class_Enrollment (course_code, section, student_id)
VALUES ('19CSE313', 'C', 'S003');


INSERT INTO Class_Enrollment (course_code, section, student_id)
VALUES ('19CSE314', 'D', 'S004');


INSERT INTO Class_Enrollment (course_code, section, student_id)
VALUES ('19CSE435', 'E', 'S005');


INSERT INTO Class_Enrollment (course_code, section, student_id)
VALUES ('19ECE343', 'F', 'S006');


INSERT INTO Class_Enrollment (course_code, section, student_id)
VALUES ('19CSE311', 'A', 'S007');


INSERT INTO Class_Enrollment (course_code, section, student_id)
VALUES ('19EEE112', 'G', 'S008');


INSERT INTO Class_Enrollment (course_code, section, student_id)
VALUES ('19ECE343', 'F', 'S009');


INSERT INTO Class_Enrollment (course_code, section, student_id)
VALUES ('19CSE311', 'A', 'S010');

CREATE TABLE Admin (
    admin_id VARCHAR(255) PRIMARY KEY,
    email VARCHAR(255),
    password VARCHAR(255)
);

INSERT INTO Admin (admin_id, email, password)
VALUES ('A001', 'admin1@example.com', 'password1');

INSERT INTO Admin (admin_id, email, password)
VALUES ('A002', 'admin2@example.com', 'password2');

INSERT INTO Admin (admin_id, email, password)
VALUES ('A003', 'admin3@example.com', 'password3');

INSERT INTO Admin (admin_id, email, password)
VALUES ('A004', 'admin4@example.com', 'password4');

CREATE TABLE Authentication (
    email VARCHAR(255) PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARChAR(255),
    role VARCHAR(255),
    password VARCHAR(255)
);
INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('rajesh.sharma@example.com', 'Rajesh', 'Sharma', 'student', 'password1');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('neha.patel@example.com', 'Neha', 'Patel', 'student', 'password2');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('sandeep.kumar@example.com', 'Sandeep', 'Kumar', 'student', 'password3');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('priya.singh@example.com', 'Priya', 'Singh', 'student', 'password4');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('vikram.yadav@example.com', 'Vikram', 'Yadav', 'student', 'password5');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('ananya.gupta@example.com', 'Ananya', 'Gupta', 'student', 'password6');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('mohit.verma@example.com', 'Mohit', 'Verma', 'student', 'password7');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('poonam.joshi@example.com', 'Poonam', 'Joshi', 'student', 'password8');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('rahul.singh@example.com', 'Rahul', 'Singh', 'student', 'password9');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('kavya.sharma@example.com', 'Kavya', 'Sharma', 'student', 'password10');


INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('amit.verma@example.com', 'Amit', 'Verma', 'faculty', 'password1');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('radhika.sharma@example.com', 'Radhika', 'Sharma', 'faculty', 'password2');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('siddharth.gupta@example.com', 'Siddharth', 'Gupta', 'faculty', 'password3');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('aishwarya.patel@example.com', 'Aishwarya', 'Patel', 'faculty', 'password4');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('manoj.yadav@example.com', 'Manoj', 'Yadav', 'faculty', 'password5');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('nisha.joshi@example.com', 'Nisha', 'Joshi', 'faculty', 'password6');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('rahul.sharma@example.com', 'Rahul', 'Sharma', 'faculty', 'password7');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('neetu.gupta@example.com', 'Neetu', 'Gupta', 'faculty', 'password8');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('vivek.singh@example.com', 'Vivek', 'Singh', 'faculty', 'password9');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('pooja.mishra@example.com', 'Pooja', 'Mishra', 'faculty', 'password10');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('admin1@example.com', 'Admin', '1', 'admin', 'adminpassword1');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('admin2@example.com', 'Admin', '2', 'admin', 'adminpassword2');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('admin3@example.com', 'Admin', '3', 'admin', 'adminpassword3');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('admin4@example.com', 'Admin', '4', 'admin', 'adminpassword4');







CREATE TABLE Class_Schedule (
  course_code VARCHAR(255),
  class_date DATE,
  num_hours INT,
  start_period INT,
  end_period INT,
  PRIMARY KEY (course_code, class_date)
);

CREATE TABLE Student_Attendance (
  course_code VARCHAR(255),
  student_id VARCHAR(255),
  class_date DATE,
  faculty_id VARCHAR(255),
  attendance VARCHAR(255),
  PRIMARY KEY (course_code, student_id, class_date),
  FOREIGN KEY (course_code, class_date) REFERENCES Class_Schedule(course_code, class_date),
  FOREIGN KEY (student_id) REFERENCES Student(student_id),
  FOREIGN KEY (faculty_id) REFERENCES Faculty(teacher_id)
);






INSERT INTO Class_Schedule (course_code, class_date, num_hours, start_period, end_period)
VALUES ('19CSE311', DATE '2023-05-13', 2, 1, 2);

INSERT INTO Class_Schedule (course_code, class_date, num_hours, start_period, end_period)
VALUES ('19CSE312', DATE '2023-05-14', 1, 3, 3);

INSERT INTO Class_Schedule (course_code, class_date, num_hours, start_period, end_period)
VALUES ('19CSE313', DATE '2023-05-15', 3, 2, 4);

INSERT INTO Class_Schedule (course_code, class_date, num_hours, start_period, end_period)
VALUES ('19CSE314', DATE '2023-05-16', 2, 4, 5);

INSERT INTO Class_Schedule (course_code, class_date, num_hours, start_period, end_period)
VALUES ('19CSE435', DATE '2023-05-17', 1, 1, 1);

INSERT INTO Class_Schedule (course_code, class_date, num_hours, start_period, end_period)
VALUES ('19ECE343', DATE '2023-05-18', 3, 2, 4);

INSERT INTO Class_Schedule (course_code, class_date, num_hours, start_period, end_period)
VALUES ('19EEE112', DATE '2023-05-19', 2, 4, 5);



INSERT INTO Student_Attendance (course_code, student_id, class_date, faculty_id, attendance)
VALUES ('19CSE311', 'S001', DATE '2023-05-13', 'T001', 'P');

INSERT INTO Student_Attendance (course_code, student_id, class_date, faculty_id, attendance)
VALUES ('19CSE312', 'S002', DATE '2023-05-14', 'T002', 'A');


INSERT INTO Student_Attendance (course_code, student_id, class_date, faculty_id, attendance)
VALUES ('19CSE313', 'S003', DATE '2023-05-15', 'T003', 'P');

INSERT INTO Student_Attendance (course_code, student_id, class_date, faculty_id, attendance)
VALUES ('19CSE314', 'S004', DATE '2023-05-16', 'T004', 'A');

INSERT INTO Student_Attendance (course_code, student_id, class_date, faculty_id, attendance)
VALUES ('19CSE435', 'S005', DATE '2023-05-17', 'T005', 'P');

INSERT INTO Student_Attendance (course_code, student_id, class_date, faculty_id, attendance)
VALUES ('19ECE343', 'S006', DATE '2023-05-18', 'T006', 'A');

INSERT INTO Student_Attendance (course_code, student_id, class_date, faculty_id, attendance)
VALUES ('19EEE112', 'S007', DATE '2023-05-19', 'T007', 'P');


CREATE TABLE Event (
  event_id INT PRIMARY KEY,
  course_code VARCHAR(255),
  class_date DATE,
  FOREIGN KEY (course_code, class_date) REFERENCES Class_Schedule(course_code, class_date)
);


ALTER TABLE Event
ADD COLUMN random_code VARCHAR(255),
ADD COLUMN teacher_latitude FLOAT,
ADD COLUMN teacher_longitude FLOAT;

INSERT INTO Event (event_id, course_code, class_date, random_code, teacher_latitude, teacher_longitude)
VALUES
  (1, '19CSE311', DATE '2023-05-13', 'ABC123', 10.9959, 76.9558),
  (2, '19CSE312', DATE '2023-05-14', 'DEF456', 10.9959, 76.9558),
  (3, '19CSE313', DATE '2023-05-15', 'GHI789', 10.9959, 76.9558),
  (4, '19CSE314', DATE '2023-05-16', 'JKL012', 10.9959, 76.9558),
  (5, '19CSE435', DATE '2023-05-17', 'MNO345', 10.9959, 76.9558),
  (6, '19ECE343', DATE '2023-05-18', 'PQR678', 10.9959, 76.9558),
  (7, '19EEE112', DATE '2023-05-19', 'STU901', 10.9959, 76.9558);

INSERT INTO Admin (admin_id, email, password)
VALUES ('A005', 'cb.en.u4cse20648@cb.students.amrita.edu', 'password15');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('cb.en.u4cse20648@cb.students.amrita.edu', 'Pravin Sabari', 'SS', 'admin', 'password15');

INSERT INTO Student (student_id, email, first_name, last_name, password, section, semester,specialization)
VALUES ('S011', 'cb.en.u4cse20666@cb.students.amrita.edu', 'Tarun', 'R', 'password5', 'B',1,  'CSE');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('cb.en.u4cse20666@cb.students.amrita.edu', 'Tarun', 'R', 'student', 'password5');

INSERT INTO Faculty (teacher_id, email, first_name, last_name, password, role)
VALUES ('T011', 'cb.en.u4cse20631@cb.students.amrita.edu', 'Serath', 'Kommula', 'password31', 'Assistant Professor');

INSERT INTO Authentication (email, first_name, last_name, role, password)
VALUES ('cb.en.u4cse20631@cb.students.amrita.edu', 'Serath', 'Kommula', 'faculty', 'password31');
