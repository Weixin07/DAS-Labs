/*
create database Lab_9;

Create table Course(
Course_ID nvarchar(50) Not Null Primary Key,
Name nvarchar(50),
Entry_Qualiafication nvarchar(50)
);

Create table Student(
Student_ID nvarchar(50) Not Null Primary Key,
Name nvarchar(50),
Gender nvarchar(50), 
DOB date,
Course_ID nvarchar(50) Foreign Key References Course(Course_ID)
);

Create table Subject(
Subject_ID nvarchar(50) Not Null Primary Key,
Name nvarchar(50),
Course_ID nvarchar(50) Foreign Key References Course(Course_ID)
);

Insert into Course values
('C01','Diploma','3 Credits in O Level'),
('C02','Degree','3 Credits in A Level'),
('C03','Master','Degree in Any Computing Field'),
('C04','Foundation','5 Credits in O Level');

Insert into Student values
('ST01','Helen','Female','2 Feb 1999','C01'),
('ST02','Karen','Female','15 September 2000','C02'),
('ST03','Peter','Male','28 April 1997','C02'),
('ST04','Shaun','Male','30 June 2001','C03');

Insert into Subject values
('SU01','SAD','C01'),
('SU02','IDB','C01'),
('SU03','ISWE','C02'),
('SU04','CPP','C02'),
('SU05','Java','C03'),
('SU06','NNT','C04'),
('SU07','DAS','C04');

ALter Authorization on Database::Lab_9 to [sa];

SELECT Student_ID, Name, Year(getdate())-year(DOB) as Age
FROM Student;

SELECT Student_ID, Name, Gender, Year(getdate())-year(DOB) as Age, Course_ID
FROM Student
WHERE Year(getdate())-year(DOB)>18;

Select *
From ((Course
INNER JOIN Student ON Course.Course_ID = Student.Course_ID)
INNER JOIN Subject ON Course.Course_ID = Subject.Course_ID);

Select *
FROM Course, Subject
WHERE Course.Course_ID = Subject.Course_ID;

Select *
FROM Course, Student, Subject
WHERE Course.Course_ID = Student.Course_ID AND Course.Course_ID = Subject.Course_ID;

SELECT * FROM Course 
LEFT JOIN Student ON Course.Course_ID = Student.Course_ID 
Order By Course.Name;

SELECT * FROM Course 
RIGHT JOIN Student ON Course.Course_ID = Student.Course_ID Order By Student.Name;
*/

sp_rename 'Course.Entry_Qualiafication', 'Entry_Qualification', 'COLUMN';

