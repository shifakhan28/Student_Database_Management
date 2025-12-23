CREATE TABLE STUDENT (
    STUDENT_ID  NUMBER(10) NOT NULL PRIMARY KEY,
    NAME VARCHAR2(40),
    EMAIL VARCHAR2(40),
    PHONE_NUMBER VARCHAR2(10) CHECK (LENGTH(PHONE_NUMBER) = 10),
    ENROLLMENT_DATE DATE DEFAULT SYSDATE
);

--Teacher Table 
CREATE TABLE teacher (
TEACHER_ID NUMBER(10,0) NOT NULL PRIMARY KEY,
NAME VARCHAR2(40),
EMAIL VARCHAR2(40),
HIRE_DATE DATE DEFAULT SYSDATE
);

--Course Table
create table courses(
course_id number(10) not null primary key,
course_name varchar2(40),
teacher_id number references teacher(teacher_id)
);

--Enrollment table 
create table enrollment(
enrollment_id varchar2 (30) not null primary key,
student_id number references student(student_id),
course_id number references courses (course_id),
enrollment_date date default sysdate 
);

--Grade table
create table grade(
grade_id number(10) not null primary key,
student_id number references  student(student_id),
course_id number references courses(course_id),
grade varchar(30)
);


-- insert  into student table
--Row 1
INSERT INTO STUDENT  VALUES (101,'Arjun Sharma','arjun.sharma@mail.com','7909398905',to_date('2024-01-01', 'YYYY-MM-DD'));
--Row 2
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (102,'Priya Verma','priya.verma@mail.com','9000000002',to_date('2024-01-02', 'YYYY-MM-DD'));
--Row 3
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (103,'Rahul Mehta','rahul.mehta@mail.com','9000000003',to_date('2024-01-03', 'YYYY-MM-DD'));
--Row 4
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (104,'Simran Kaur','simran.kaur@mail.com','9000000004',to_date('2024-01-04', 'YYYY-MM-DD'));
--Row 5
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (105,'Ankit Raj','ankit.raj@mail.com','9000000005',to_date('2024-01-05', 'YYYY-MM-DD'));
--Row 6
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (106,'Neha Gupta','neha.gupta@mail.com','9000000006',to_date('2024-01-06', 'YYYY-MM-DD'));
--Row 7
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (107,'Rohit Singh','rohit.singh@mail.com','9000000007',to_date('2024-01-07', 'YYYY-MM-DD'));
--Row 8
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (108,'Sana Khan','sana.khan@mail.com','9000000008',to_date('2024-01-08', 'YYYY-MM-DD'));
--Row 9
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (109,'Vikram Patel','vikram.patel@mail.com','9000000009',to_date('2024-01-09', 'YYYY-MM-DD'));
--Row 10
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (110,'Ayesha Siddiqui','ayesha.sid@mail.com','9000000010',to_date('2024-01-10', 'YYYY-MM-DD'));
--Row 11
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (111,'Karan Malhotra','karan.malhotra@mail.com','9000000011',to_date('2024-01-11', 'YYYY-MM-DD'));
--Row 12
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (112,'Shreya Nair','shreya.nair@mail.com','9000000012',to_date('2024-01-12', 'YYYY-MM-DD'));
--Row 13
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (113,'Aman Yadav','aman.yadav@mail.com','9000000013',to_date('2024-01-13', 'YYYY-MM-DD'));
--Row 14
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (114,'Isha Kulkarni','isha.kulkarni@mail.com','9000000014',to_date('2024-01-14', 'YYYY-MM-DD'));
--Row 15
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (115,'Harsh Tiwari','harsh.tiwari@mail.com','9000000015',to_date('2024-01-15', 'YYYY-MM-DD'));
--Row 16
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (116,'Pooja Reddy','pooja.reddy@mail.com','9000000016',to_date('2024-01-16', 'YYYY-MM-DD'));
--Row 17
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (117,'Aditya Mishra','aditya.mishra@mail.com','9000000017',to_date('2024-01-17', 'YYYY-MM-DD'));
--Row 18
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (118,'Divya Menon','divya.menon@mail.com','9000000018',to_date('2024-01-18', 'YYYY-MM-DD'));
--Row 19
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (119,'Rohan Das','rohan.das@mail.com','9000000019',to_date('2024-01-19', 'YYYY-MM-DD'));
--Row 20
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (120,'Meera Rao','meera.rao@mail.com','9000000020',to_date('2024-01-20', 'YYYY-MM-DD'));
--Row 21
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (121,'Sahil Kapoor','sahil.kapoor@mail.com','9000000021',to_date('2024-01-21', 'YYYY-MM-DD'));
--Row 22
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (122,'Kritika Jain','kritika.jain@mail.com','9000000022',to_date('2024-01-22', 'YYYY-MM-DD'));
--Row 23
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (123,'Varun Sinha','varun.sinha@mail.com','9000000023',to_date('2024-01-23', 'YYYY-MM-DD'));
--Row 24
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (124,'Muskan Sheikh','muskan.sheikh@mail.com','9000000024',to_date('2024-01-24', 'YYYY-MM-DD'));
--Row 25
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (125,'Lakshya Choudhary','lakshya.ch@mail.com','9000000025',to_date('2024-01-25', 'YYYY-MM-DD'));
--Row 26
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (126,'Anjali Thakur','anjali.thakur@mail.com','9000000026',to_date('2024-01-26', 'YYYY-MM-DD'));
--Row 27
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (127,'Devansh Pandey','devansh.pandey@mail.com','9000000027',to_date('2024-01-27', 'YYYY-MM-DD'));
--Row 28
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (128,'Reema Joshi','reema.joshi@mail.com','9000000028',to_date('2024-01-28', 'YYYY-MM-DD'));
--Row 29
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (129,'Abhishek Pawar','abhishek.pawar@mail.com','9000000029',to_date('2024-01-29', 'YYYY-MM-DD'));
--Row 30
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (130,'Shalini Ghosh','shalini.ghosh@mail.com','9000000030',to_date('2024-01-30', 'YYYY-MM-DD'));
--Row 31
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (131,'Yuvraj Chauhan','yuvraj.chauhan@mail.com','9000000031',to_date('2024-02-01', 'YYYY-MM-DD'));
--Row 32
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (132,'Aditi Desai','aditi.desai@mail.com','9000000032',to_date('2024-02-02', 'YYYY-MM-DD'));
--Row 33
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (133,'Rajat Bansal','rajat.bansal@mail.com','9000000033',to_date('2024-02-03', 'YYYY-MM-DD'));
--Row 34
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (134,'Payal Shinde','payal.shinde@mail.com','9000000034',to_date('2024-02-04', 'YYYY-MM-DD'));
--Row 35
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (135,'Nikhil Aggarwal','nikhil.aggarwal@mail.com','9000000035',to_date('2024-02-05', 'YYYY-MM-DD'));
--Row 36
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (136,'Shruti Saxena','shruti.saxena@mail.com','9000000036',to_date('2024-02-06', 'YYYY-MM-DD'));
--Row 37
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (137,'Kunal Kohli','kunal.kohli@mail.com','9000000037',to_date('2024-02-07', 'YYYY-MM-DD'));
--Row 38
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (138,'Tanya Bhatia','tanya.bhatia@mail.com','9000000038',to_date('2024-02-08', 'YYYY-MM-DD'));
--Row 39
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (139,'Manish Jha','manish.jha@mail.com','9000000039',to_date('2024-02-09', 'YYYY-MM-DD'));
--Row 40
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (140,'Sonali Dutta','sonali.dutta@mail.com','9000000040',to_date('2024-02-10', 'YYYY-MM-DD'));
--Row 41
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (141,'Deepak Rana','deepak.rana@mail.com','9000000041',to_date('2024-02-11', 'YYYY-MM-DD'));
--Row 42
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (142,'Anushka Kapoor','anushka.kapoor@mail.com','9000000042',to_date('2024-02-12', 'YYYY-MM-DD'));
--Row 43
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (143,'Abhinav Sood','abhinav.sood@mail.com','9000000043',to_date('2024-02-13', 'YYYY-MM-DD'));
--Row 44
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (144,'Ritika Arora','ritika.arora@mail.com','9000000044',to_date('2024-02-14', 'YYYY-MM-DD'));
--Row 45
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (145,'Saurabh Chauhan','saurabh.ch@mail.com','9000000045',to_date('2024-02-15', 'YYYY-MM-DD'));
--Row 46
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (146,'Monika Bedi','monika.bedi@mail.com','9000000046',to_date('2024-02-16', 'YYYY-MM-DD'));
--Row 47
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (147,'Vishal Bhatt','vishal.bhatt@mail.com','9000000047',to_date('2024-02-17', 'YYYY-MM-DD'));
--Row 48
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (148,'Heena Qureshi','heena.qureshi@mail.com','9000000048',to_date('2024-02-18', 'YYYY-MM-DD'));
--Row 49
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (149,'Parth Trivedi','parth.trivedi@mail.com','9000000049',to_date('2024-02-19', 'YYYY-MM-DD'));
--Row 50
INSERT INTO STUDENT (STUDENT_ID, NAME, EMAIL, PHONE_NUMBER, ENROLLMENT_DATE) VALUES (150,'Sneha Patil','sneha.patil@mail.com','9000000050',to_date('2024-02-20', 'YYYY-MM-DD'));

select * from student;

--Insert into teacher table 

--Teacher Table 
-- Row 1
INSERT INTO TEACHER (teacher_id,name,email,hire_date)VALUES (1, 'Amit Kumar', 'amit.kumar@school.com', TO_DATE('2024-01-01', 'YYYY-MM-DD'));

-- Row 2
INSERT INTO TEACHER VALUES (2, 'Priya Sharma', 'priya.sharma@school.com', TO_DATE('2024-01-03', 'YYYY-MM-DD'));

-- Row 3
INSERT INTO TEACHER VALUES (3, 'Rahul Gupta', 'rahul.gupta@school.com', TO_DATE('2024-01-05', 'YYYY-MM-DD'));

-- Row 4
INSERT INTO TEACHER VALUES (4, 'Neha Singh', 'neha.singh@school.com', TO_DATE('2024-01-07', 'YYYY-MM-DD'));

-- Row 5
INSERT INTO TEACHER VALUES (5, 'Arun Verma', 'arun.verma@school.com', TO_DATE('2024-01-09', 'YYYY-MM-DD'));

-- Row 6
INSERT INTO TEACHER VALUES (6, 'Divya Nair', 'divya.nair@school.com', TO_DATE('2024-01-11', 'YYYY-MM-DD'));

-- Row 7
INSERT INTO TEACHER VALUES (7, 'Sandeep Mehta', 'sandeep.mehta@school.com', TO_DATE('2024-01-13', 'YYYY-MM-DD'));

-- Row 8
INSERT INTO TEACHER VALUES (8, 'Ritu Jha', 'ritu.jha@school.com', TO_DATE('2024-01-15', 'YYYY-MM-DD'));

-- Row 9
INSERT INTO TEACHER VALUES (9, 'Anil Kapoor', 'anil.kapoor@school.com', TO_DATE('2024-01-17', 'YYYY-MM-DD'));

-- Row 10
INSERT INTO TEACHER VALUES (10, 'Sneha Agarwal', 'sneha.agarwal@school.com', TO_DATE('2024-01-19', 'YYYY-MM-DD'));

-- Row 11
INSERT INTO TEACHER VALUES (11, 'Rohan Singh', 'rohan.singh@school.com', TO_DATE('2024-01-21', 'YYYY-MM-DD'));

-- Row 12
INSERT INTO TEACHER VALUES (12, 'Kavita Joshi', 'kavita.joshi@school.com', TO_DATE('2024-01-23', 'YYYY-MM-DD'));

-- Row 13
INSERT INTO TEACHER VALUES (13, 'Vivek Pandey', 'vivek.pandey@school.com', TO_DATE('2024-01-25', 'YYYY-MM-DD'));

-- Row 14
INSERT INTO TEACHER VALUES (14, 'Savita Rao', 'savita.rao@school.com', TO_DATE('2024-01-27', 'YYYY-MM-DD'));

-- Row 15
INSERT INTO TEACHER VALUES (15, 'Mohit Agarwal', 'mohit.agarwal@school.com', TO_DATE('2024-01-29', 'YYYY-MM-DD'));

-- Row 16
INSERT INTO TEACHER VALUES (16, 'Pooja Jain', 'pooja.jain@school.com', TO_DATE('2024-01-31', 'YYYY-MM-DD'));

-- Row 17
INSERT INTO TEACHER VALUES (17, 'Suresh Kumar', 'suresh.kumar@school.com', TO_DATE('2024-02-02', 'YYYY-MM-DD'));

-- Row 18
INSERT INTO TEACHER VALUES (18, 'Meena Patil', 'meena.patil@school.com', TO_DATE('2024-02-04', 'YYYY-MM-DD'));

-- Row 19
INSERT INTO TEACHER VALUES (19, 'Aditya Sharma', 'aditya.sharma@school.com', TO_DATE('2024-02-06', 'YYYY-MM-DD'));

-- Row 20
INSERT INTO TEACHER VALUES (20, 'Rashmi Kulkarni', 'rashmi.kulkarni@school.com', TO_DATE('2024-02-08', 'YYYY-MM-DD'));

select * from teacher;

-- insert the value course

--Course Table

-- Row 1
INSERT INTO COURSES (course_id,course_name,teacher_id)VALUES (101, 'Mathematics', 1);

-- Row 2
INSERT INTO COURSES VALUES (102, 'Physics', 2);

-- Row 3
INSERT INTO COURSES VALUES (103, 'Chemistry', 3);

-- Row 4
INSERT INTO COURSES VALUES (104, 'Biology', 4);

-- Row 5
INSERT INTO COURSES VALUES (105, 'Computer Science', 5);

-- Row 6
INSERT INTO COURSES VALUES (106, 'English Literature', 6);

-- Row 7
INSERT INTO COURSES VALUES (107, 'History', 7);

-- Row 8
INSERT INTO COURSES VALUES (108, 'Geography', 8);

-- Row 9
INSERT INTO COURSES VALUES (109, 'Economics', 9);

-- Row 10
INSERT INTO COURSES VALUES (110, 'Political Science', 10);

-- Row 11
INSERT INTO COURSES VALUES (111, 'Statistics', 11);

-- Row 12
INSERT INTO COURSES VALUES (112, 'Environmental Science', 12);

-- Row 13
INSERT INTO COURSES VALUES (113, 'Psychology', 13);

-- Row 14
INSERT INTO COURSES VALUES (114, 'Sociology', 14);

-- Row 15
INSERT INTO COURSES VALUES (115, 'Philosophy', 15);

-- Row 16
INSERT INTO COURSES VALUES (116, 'Business Studies', 16);

-- Row 17
INSERT INTO COURSES VALUES (117, 'Accounting', 17);

-- Row 18
INSERT INTO COURSES VALUES (118, 'Marketing', 18);

-- Row 19
INSERT INTO COURSES VALUES (119, 'Graphic Design', 19);

-- Row 20
INSERT INTO COURSES VALUES (120, 'Data Science', 20);

select * from courses;


-- insert the value  enrollment 
--Enrollment table 


INSERT INTO ENROLLMENT VALUES ('ENR001', 101, 101, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR002', 102, 102, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR003', 103, 103, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR004', 104, 104, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR005', 105, 105, SYSDATE);

INSERT INTO ENROLLMENT VALUES ('ENR006', 106, 106, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR007', 107, 107, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR008', 108, 108, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR009', 109, 109, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR010', 110, 110, SYSDATE);

INSERT INTO ENROLLMENT VALUES ('ENR011', 111, 101, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR012', 112, 102, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR013', 113, 103, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR014', 114, 104, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR015', 115, 105, SYSDATE);

INSERT INTO ENROLLMENT VALUES ('ENR016', 116, 106, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR017', 117, 107, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR018', 118, 108, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR019', 119, 109, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR020', 120, 110, SYSDATE);

INSERT INTO ENROLLMENT VALUES ('ENR021', 121, 111, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR022', 122, 112, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR023', 123, 113, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR024', 124, 114, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR025', 125, 115, SYSDATE);

INSERT INTO ENROLLMENT VALUES ('ENR026', 126, 116, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR027', 127, 117, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR028', 128, 118, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR029', 129, 119, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR030', 130, 120, SYSDATE);

INSERT INTO ENROLLMENT VALUES ('ENR031', 131, 101, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR032', 132, 102, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR033', 133, 103, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR034', 134, 104, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR035', 135, 105, SYSDATE);

INSERT INTO ENROLLMENT VALUES ('ENR036', 136, 111, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR037', 137, 112, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR038', 138, 113, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR039', 139, 114, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR040', 140, 115, SYSDATE);

INSERT INTO ENROLLMENT VALUES ('ENR041', 141, 116, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR042', 142, 117, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR043', 143, 118, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR044', 144, 119, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR045', 145, 120, SYSDATE);

INSERT INTO ENROLLMENT VALUES ('ENR046', 146, 101, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR047', 147, 102, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR048', 148, 103, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR049', 149, 104, SYSDATE);
INSERT INTO ENROLLMENT VALUES ('ENR050', 150, 105, SYSDATE);

select * from enrollment;

-- insert the value grade 
create table grade(
grade_id number(10) not null primary key,
student_id number references student(student_id),
course_id number references courses(course_id),
grade varchar(30)
);


INSERT INTO grade VALUES (1, 101, 101, 'A');
INSERT INTO grade VALUES (2, 102, 102, 'B+');
INSERT INTO grade VALUES (3, 103, 103, 'A-');
INSERT INTO grade VALUES (4, 104, 104, 'B');
INSERT INTO grade VALUES (5, 105, 105, 'C+');
INSERT INTO grade VALUES (6, 106, 106, 'A');
INSERT INTO grade VALUES (7, 107, 107, 'B-');
INSERT INTO grade VALUES (8, 108, 108, 'A+');
INSERT INTO grade VALUES (9, 109, 109, 'C');
INSERT INTO grade VALUES (10, 110, 110, 'B+');

INSERT INTO grade VALUES (11, 111, 111, 'A');
INSERT INTO grade VALUES (12, 112, 112, 'A-');
INSERT INTO grade VALUES (13, 113, 113, 'B+');
INSERT INTO grade VALUES (14, 114, 114, 'C');
INSERT INTO grade VALUES (15, 115, 115, 'A');
INSERT INTO grade VALUES (16, 116, 116, 'B');
INSERT INTO grade VALUES (17, 117, 117, 'C+');
INSERT INTO grade VALUES (18, 118, 118, 'A-');
INSERT INTO grade VALUES (19, 119, 119, 'B');
INSERT INTO grade VALUES (20, 120, 120, 'A+');

INSERT INTO grade VALUES (21, 121, 101, 'B');
INSERT INTO grade VALUES (22, 122, 102, 'C+');
INSERT INTO grade VALUES (23, 123, 103, 'A');
INSERT INTO grade VALUES (24, 124, 104, 'B+');
INSERT INTO grade VALUES (25, 125, 105, 'B-');
INSERT INTO grade VALUES (26, 126, 106, 'A+');
INSERT INTO grade VALUES (27, 127, 107, 'C');
INSERT INTO grade VALUES (28, 128, 108, 'A');
INSERT INTO grade VALUES (29, 129, 109, 'B');
INSERT INTO grade VALUES (30, 130, 100, 'C+');

INSERT INTO grade VALUES (31, 131, 111, 'A');
INSERT INTO grade VALUES (32, 132, 112, 'B');
INSERT INTO grade VALUES (33, 133, 113, 'C');
INSERT INTO grade VALUES (34, 134, 114, 'A-');
INSERT INTO grade VALUES (35, 135, 115, 'A+');
INSERT INTO grade VALUES (36, 136, 116, 'B+');
INSERT INTO grade VALUES (37, 137, 117, 'A');
INSERT INTO grade VALUES (38, 138, 118, 'B-');
INSERT INTO grade VALUES (39, 139, 119, 'C+');
INSERT INTO grade VALUES (40, 140, 110, 'A');

INSERT INTO grade VALUES (41, 141, 111, 'B+');
INSERT INTO grade VALUES (42, 142, 112, 'C');
INSERT INTO grade VALUES (43, 143, 113, 'B');
INSERT INTO grade VALUES (44, 144, 114, 'A+');
INSERT INTO grade VALUES (45, 145, 115, 'A');
INSERT INTO grade VALUES (46, 146, 116, 'B+');
INSERT INTO grade VALUES (47, 147, 117, 'C');
INSERT INTO grade VALUES (48, 148, 118, 'A');
INSERT INTO grade VALUES (49, 149, 119, 'B');
INSERT INTO grade VALUES (50, 150, 120, 'A+');

select * from grade;

-- Query :- 1 Add the New Student 
insert into student values(151,'shyam','shyam@gmail.com',7854342354,to_date('2024-01-01', 'YYYY-MM-DD'));

--  Query :- 2 Enroll the student course
desc teacher;
insert into teacher values(21,'Malti','malti@gmail.com', to_date('2024-01-01','YYYY-MM-DD'));
desc courses;
insert into courses values(121,'Data Science',21 );
desc enrollment;
insert into enrollment values('ENR051',151,121,to_date('2024-01-01','YYYY-MM-DD'));

--Query :- 3 Assign a grade to a student 
insert into grade values(51,151,121,'C');
desc grade;

-- Query :- 4 List All Students Enrolled in a Course
select  s.name ,c.course_name 
from student s join enrollment e on s.student_id = e.student_id 
join courses c on e.course_id =c.course_id ;


-- Query :- 5 List All Students Enrolled in a Course fetch only one row
select  s.name ,c.course_name 
from student s join enrollment e on s.student_id = e.student_id 
join courses c on e.course_id =c.course_id where rownum=1;

select  s.name ,c.course_name 
from student s join enrollment e on s.student_id = e.student_id 
join courses c on e.course_id =c.course_id  fetch first rows only;

-- Query-6: Update a Student’s Contact Information

update student set phone_number ='9000000001' where student_id=101;

select * from student;
select * from courses;

--Query-7: Remove a Student from a Course
delete from enrollment where student_id=101 and course_id=101;
select * from enrollment;
select * from courses;

--Query 8:- View All Courses Taught by a Specific Teacher

select c.course_name ,c.teacher_id, t.name from courses c  join teacher t on
c.teacher_id = t.teacher_id;

--Query-9: Count the Number of Students in a Courses

select
count(e.student_id)as student_count,
e.course_id,
c.course_name 
from enrollment e  join courses c on e.course_id = c.course_id
group by e.course_id ,c.course_name;

--Query-10: List Students Who Have Not Yet Been Assigned a Grade
select
s.name,s.student_id,g.grade from student s 
left join
grade g on s.student_id = g.student_id
where g.grade is null;

-- Query-11: Calculate the Average Grade for a Course
SELECT 
    c.course_id,
    c.course_name,
    AVG(g.grade) AS avg_grade
FROM courses c
JOIN grade g 
    ON c.course_id = g.course_id
GROUP BY c.course_id, c.course_name;

--Query-12: Find the Highest Grade Assigned in a Course
select max(g.grade) as higgest_grade, c.course_name
from grade g join courses c on  c.course_id = g.course_id
group by c.course_name ;

--Query-13: List Students with the Same Grade in a Course
select s.name, g.grade,c.course_name from student s join grade g 
on s.student_id = g.student_id join courses c 
on g.course_id = c.course_id where g.course_id in (select course_id from grade 
group by course_id,grade having count(student_id) > 1)
order by c.course_name,g.grade,s.name;

--Query-14: Assign a Teacher to a New Course
insert into teacher values(22,'harish','harish@gmail.com',to_date('12,3,2005','dd,mm,yyyy'));
insert into courses values(141,'Mathematics',22);

--Query-15: Find the Total Number of Courses Each Student is Enrolled In
select c.course_name,count(e.student_id)as student_count from enrollment e 
join courses c on e.course_id = c.course_id group by course_name;
desc enrollment;
desc courses;
desc student;

