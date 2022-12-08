--use northwind
--select productname,categoryname from products inner join Categories on products.CategoryID = Categories.CategoryID;
--select productName, categoryName from products,Categories where Categories.CategoryID = Products.CategoryID;
--select CompanyName,ProductName from Suppliers as s inner join products as p on s.SupplierID = p.SupplierID;
--select  productname,d.Unitprice,Quantity,Discount,orderdate,requireddate,shippedDate,CompanyName,d.UnitPrice*Quantity*(1-Discount) as wartoźć,FirstName,LastName
--from Customers
--inner join Orders 
--on orders.CustomerID = Customers.CustomerID
--inner join [Order Details] d on d.OrderID = orders.OrderID
--inner join products on d.ProductID = products.ProductID
--inner join Employees on employees.EmployeeID = orders.EmployeeID
--;
--select  count(o.orderID) as ile
--,CategoryName
--from Customers
--inner join Orders o 
--on o.CustomerID = Customers.CustomerID
--inner join [Order Details] d on d.OrderID = o.OrderID
--inner join products on d.ProductID = products.ProductID
--inner join Employees on employees.EmployeeID = o.EmployeeID
--inner join Categories on categories.categoryid = Products.categoryid 
--group by CategoryName
--order by ile desc
--;
--select * from [Order Details];

--imie i nazwisko pracownika


--select productname,categoryname from products p 
--full outer join Categories c on p.CategoryID = c.CategoryID 
--where productname is null
--;
--klient nic nie kupil 

--select CompanyName,OrderID from Customers full outer join Orders on customers.customerid = orders.CustomerID where orderid is null;
select e.LastName,e.FirstName,p.LastName,p.FirstName from Employees e right join Employees p on e.EmployeeID = p.ReportsTo;
select e.LastName,e.FirstName,p.LastName,p.FirstName from Employees e full outer join Employees p on e.EmployeeID = p.ReportsTo;
select e.LastName,e.FirstName,p.LastName,p.FirstName from Employees e cross join Employees p  ;

