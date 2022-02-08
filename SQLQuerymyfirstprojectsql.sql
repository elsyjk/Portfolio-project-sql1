select*
From dbo.Customer

select*
From dbo.Orders

select*
From dbo.Products

select* from Orders;
select* from Products;
select* from Customer;

insert into Orders (OrderDate, CustomerID, ProductID) values (GetDate(), 2,2)
                                                                        -- 1, 2
                                                                        --  2, 3
                                                                        --  3, 4
                                                                         --  4, 5
Select sum(p.Price) as Total
From Orders o
inner join Products p on o.ProductID=p.id
inner join Customer c on o. CustomerID=c.id

Select c.LastName,p.ProductName, sum(p.Price) as Total
From Orders o
inner join Products p on o.ProductID=p.id
inner join Customer c on o. CustomerID=c.id
group by c.LastName,p.ProductName

Select c.City,sum(p.Price) as Total,AVG(p.Price) as Averprice
From Orders o
inner join Products p on o.ProductID=p.id
inner join Customer c on o. CustomerID=c.id
group by c.City











