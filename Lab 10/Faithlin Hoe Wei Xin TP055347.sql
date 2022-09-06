/*
create database Lab_10

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

SELECT * FROM Student
WHERE Gender = 'Female' AND Course_ID = 'C02'
ORDER BY NAME DESC;

Select *
FROM Course, Student
WHERE Course.Course_ID = Student.Course_ID AND Student.Gender = 'Female' AND Course.Name = 'Degree'
ORDER BY Student.NAME DESC;

SELECT * FROM Course
WHERE Entry_Qualification = '5 Credits in O Level'
ORDER BY NAME ASC;

Select *
FROM Course, Student
WHERE Course.Course_ID = Student.Course_ID AND Course.Entry_Qualification = '5 Credits in O Level'
ORDER BY Course.NAME ASC;

SELECT * FROM Subject
WHERE Course_ID IN (Select Course_ID from Course where Name = 'Degree' OR Name = 'Master');

Select *
FROM Course, Subject
WHERE Course.Course_ID = Subject.Course_ID AND Course.Name = 'Degree' OR Course.Name = 'Master';

SELECT COUNT(Subject_ID) As 'Total Subjects'
FROM Subject
GROUP BY Course_ID;

SELECT COUNT(Student_ID) As 'Total Students'
FROM Student
GROUP BY Course_ID

SELECT COUNT(Student_ID) As 'Age_Above_Average'
FROM Student
WHERE Year(getdate())-year(DOB)> (SELECT AVG(Year(getdate())-year(DOB)) From Student);

SELECT * 
FROM Student
ORDER BY Year(getdate())-year(DOB) DESC;

SELECT Course_ID 
FROM Student
Group By Course_ID
HAVING COUNT(Student_ID) > 1;

SELECT Course.Name, Count(Student_ID) as 'Amount of Students'
FROM Student
LEFT JOIN Course
ON Student.Course_ID = Course.Course_ID
GROUP BY Course.Name 
HAVING COUNT(Student_ID)>1;

SELECT Course.Name, Count(Student_ID) as 'Amount of Students'
FROM Student
LEFT JOIN Course
ON Student.Course_ID = Course.Course_ID
GROUP BY Course.Name 
HAVING COUNT(Student_ID)=1;
*/

sp_rename 'Course.Entry_Qualiafication', 'Entry_Qualification', 'COLUMN';
