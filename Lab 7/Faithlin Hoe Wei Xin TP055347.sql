/*
create database Lab_7

Create table Publisher(
Publisher_ID nvarchar(50) Not Null Primary Key,
Name nvarchar(50),
Address nvarchar(50));

 

Create table Book(
Book_ID nvarchar(50) Not Null Primary Key,
Name nvarchar(50),
Author nvarchar(50), 
Price int,
Published_Date date,
Publisher_ID nvarchar(50) Foreign Key References Publisher(Publisher_ID));

 

Insert into Publisher values
('P01','Pearson','Bukit Jalil'),
('P02','Deitel','Puchong'),
('P03','Rainbow','Subang');

 

Insert into Book values
('B01','Maths','J.Wenton','50','10 Jan 2016','P01'),
('B02','Science','S.Hanson','100','12 Feb 2016','P01'),
('B03','English','K.Vince','89','9 March 2016','P02'),
('B04','Biology','K.Vince','150','24 April 2016','P03');

UPDATE Book
SET Publisher_ID = 'P02'
WHERE Book_ID = 'B04';

SELECT *
FROM Book
Where Publisher_ID = (Select Publisher_ID from Publisher where Name = 'Deitel')

SELECT *
FROM Book
Where Publisher_ID = (Select Publisher_ID from Publisher where Name = 'Pearson') 
Order By Name DESC

SELECT *
FROM Book
Where Publisher_ID = (Select Publisher_ID from Publisher where Name = 'Pearson') and Author = 'S.Hanson';

SELECT *
FROM Book
Where Publisher_ID = (Select Publisher_ID from Publisher where Name = 'Pearson') and Price >80;

SELECT *
FROM Book
Where Publisher_ID = (Select Publisher_ID from Publisher where Name = 'Pearson') and Price Between 30 and 70;

SELECT *
FROM Book
Where Publisher_ID = (Select Publisher_ID from Publisher where Name = 'Deitel') and Published_Date >('2016-03-25');

SELECT COUNT(Book_ID) As Number_Of_Book
FROM Book
Where Publisher_ID = (Select Publisher_ID from Publisher where Name = 'Deitel')

SELECT SUM(Price) As Total_Price
FROM Book
Where Publisher_ID = (Select Publisher_ID from Publisher where Name = 'Pearson')

SELECT AVG(Price) As Average_Price
FROM Book
Where Publisher_ID = (Select Publisher_ID from Publisher where Name = 'Pearson')

SELECT *
FROM Book
Where Publisher_ID = (Select Publisher_ID from Publisher where Address = 'Bukit Jalil')

SELECT COUNT(Book_ID) As Number_Of_Books
FROM Book
Where Publisher_ID = (Select Publisher_ID from Publisher where Address = 'Puchong')

SELECT *
FROM Book
Where Publisher_ID = (Select Publisher_ID from Publisher where Name = 'Pearson') and Published_Date >('2016-01-31');
*/