/*
Create database Lab_5

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

Select * From Publisher where Name Like 'R%';

Select * From Publisher where Name Like '%n';

Select * From Book where Name Like '_a%';

Select * From Book where Name Like '%ce' Order By Name DESC;

Select * From Book where Author Like '%on%' Order By Price DESC;

Select * From Publisher where Address In ('Puchong', 'Subang');

Select * From Book where Price In ('50', '100');

Select * From Book where Name In ('Maths', 'Science', 'English') Order By Price ASC;

UPDATE Publisher
SET Address = 'Serdang'
WHERE Publisher_ID = 'P01';

Update Book
Set Price = 99
Where Book_ID = 'B03';

Update Book
Set Published_Date = '3 September 2017'
Where Book_ID = 'B02';

ALTER TABLE Publisher
ADD Telephone int;

sp_rename 'Publisher.Telephone', 'Contact_Number', 'COLUMN';

ALTER TABLE Publisher
DROP COLUMN Contact_Number;

DELETE FROM Book WHERE Book_ID = 'B04';

DELETE FROM Book WHERE Book_ID = 'B01';

Create table Customer(
Customer_ID nvarchar(50) Not Null Primary Key,
Name nvarchar(50));

DROP TABLE Customer;

CREATE DATABASE Sed;

DROP DATABASE Sed;
*/