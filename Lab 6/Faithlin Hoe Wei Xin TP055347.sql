/*
create database Lab_6;

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

SELECT TOP 2 * FROM Publisher;

SELECT TOP 3 * FROM Book
WHERE Price < 130;

SELECT MIN(Price) AS Lowest_Price
FROM Book;

SELECT MAX(Price) As Highest_Price
FROM Book;

SELECT SUM(Price) As Total_Price
FROM Book;

SELECT AVG(Price) As Average_Price
FROM Book;

SELECT Name, Price FROM Book
WHERE Price > (SELECT AVG(Price) FROM Book);

SELECT COUNT(Book_ID) As Total_Books
FROM Book;

SELECT COUNT(Book_ID)
FROM Book
Where Author = 'K.Vince';

SELECT COUNT(Book_ID) As Books_Cost_More_Than_60
FROM Book
Where Price > 60;

SELECT COUNT(Book_ID) As Books_Cost_More_Than_Average
FROM Book
WHERE Price > (SELECT AVG(Price) FROM Book);

SELECT COUNT(Book_ID) As Total_Books_By_Author
FROM Book
GROUP BY Author;

SELECT SUM(Price) As Book_Price_By_Author
FROM Book
GROUP BY Author;

UPDATE Book
SET Price = Price + 10
WHERE Name='Maths';

UPDATE Book
SET Price = Price - 20
WHERE Name='Biology';

UPDATE Book
SET Price = Price * 1.1
WHERE Name='English';

UPDATE Book
SET Price = Price / 2
WHERE Name='Science';
*/
