/*
create database Lab_8

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
('B04','Biology','K.Vince','150','24 April 2016','P02');

INSERT INTO Publisher (Publisher_ID, Name, Address)
VALUES ('P04', 'MacHill', 'Kuala Lumpur');

INSERT INTO Book (Book_ID, Name, Author, Price)
VALUES ('B05', 'Computing', 'J.Denzin', '180');

Select *
From Book
INNER JOIN Publisher
ON Book.Publisher_ID = Publisher.Publisher_ID;

SELECT *
FROM Publisher
LEFT JOIN Book
ON Publisher.Publisher_ID = Book.Publisher_ID
Order By Publisher.Name ASC;

SELECT *
FROM Publisher
RIGHT JOIN Book
ON Publisher.Publisher_ID = Book.Publisher_ID
Order By Book.Name ASC;

SELECT *
FROM Publisher
FULL OUTER JOIN Book
ON Publisher.Publisher_ID = Book.Publisher_ID;

SELECT Publisher_ID, Name
FROM Publisher
UNION 
SELECT Book_ID, Name 
FROM Book;

SELECT *
FROM Publisher
FULL OUTER JOIN Book
ON Publisher.Publisher_ID = Book.Publisher_ID
WHERE Publisher.Name = 'Deitel';

SELECT *
FROM Publisher
FULL OUTER JOIN Book
ON Publisher.Publisher_ID = Book.Publisher_ID
WHERE Publisher.Name = 'Pearson' and Book.Author = 'S.Hanson';

SELECT *
FROM Publisher
FULL OUTER JOIN Book
ON Publisher.Publisher_ID = Book.Publisher_ID
WHERE Publisher.Name = 'Pearson' and Book.Author = 'J.Wenton' and Price Between 30 And 70;

SELECT *
FROM Publisher
FULL OUTER JOIN Book
ON Publisher.Publisher_ID = Book.Publisher_ID
WHERE Publisher.Address = 'Bukit Jalil';
*/



