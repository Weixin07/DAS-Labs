/*
Create database LAB_4

Create table Publisher
(PublisherID nvarchar(50) Not Null Primary Key,
Name nvarchar(50),
Address nvarchar(50));

 

Create table Book
(BookID nvarchar(50) Not Null Primary Key,
Name nvarchar(50),
Author nvarchar(50), 
Price int,
PublishedDate date,
PublisherID nvarchar(50) Foreign Key References Publisher(PublisherID));

 

Insert into Publisher values
('P01','Pearson','Bukit Jalil'),
('P02','Deitel','Puchong'),
('P03','Rainbow','Subang');

 

Insert into Book values
('B01','Maths','J.Wenton','50','10 Jan 2016','P01'),
('B02','Science','S.Hanson','100','12 Feb 2016','P01'),
('B03','English','K.Vince','89','9 March 2016','P02'),
('B04','Biology','K.Vince','150','24 April 2016','P03');

--Lab 4
--Q4
Select * From Publisher;
--Q5
Select Name, Author from Book
--Q6
Select * From Book where Author = ('K.Vince');
--Q7
Select * From Book where PublisherID = 'P01';
--Q8
Select * From Book where Price >100;
--Q9
Select * From Book where price <=100;
--Q10
Select * From Book where Price Between 100 And 200;
--Q11
Select * From Book where Price Not Between 100 And 200;
--Q12
Select * From Book where Author = ('S.Hanson') And Price = 100;
--Q13
Select * From Book where Author = 'J.Wenton' And Price = 30;
**This code is not functioning with the intends of typing wrongly
--Q14
Select * From Book where Author = 'K.VInce' or Price Between 50 And 100;
--Q15
Select * From Book where Author = 'K.Vince' or Price Not Between 50 And 100;
--Q16
Select * From Publisher Order By Name ASC;
--Q17
Select * From Book Order By Name DESC;
--Q18
Select * From Book where Author = 'K.Vince' Order By Name DESC;
--Q19
Select * From Book where Not Author = 'J.Wenton' And Price >30 Order By Price DESC; 
--Q20
Select * From Book where not Name = 'English';
--Q21
Select * From Book where not PublisherID = 'P01' Order By Price ASC;
--Q22
Select * From Book where not Author = 'K.Vince' or Price Not Between 90 And 160 Order By Price ASC;
*/