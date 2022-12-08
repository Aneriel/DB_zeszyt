--select avg(UnitPrice) from Products;
/*select ProductName, UnitPrice, (select avg(unitPrice) from products) as średnia from Products
where UnitPrice > (select avg(UnitPrice) from Products)
order by UnitPrice;*/
--select ProductName,PriceRange from
--(
--select ProductName,UnitPrice,PriceRange = 
--case
--	When UnitPrice <30 Then 'Tanio'
--	when UnitPrice between 30 and 60 then 'średnio'
--	when unitPrice between 61 and 100 then 'drogo'
--	when UnitPrice >100 then 'b.drogo'
--	else 'error'
--end
--from Products) as abc where PriceRange like 'drogo'
--;

--wyswietl klientow ktorzy zlozyli 5 zamowien

--select ile,companyName from(
--select count(OrderID) as ile, companyName from Orders o
--inner join Customers c on o.CustomerID=c.CustomerID
--group by CompanyName) as ab where ile = 5;
--select productname from products where SupplierID in(Select SupplierID from Suppliers where Country in ('USA' , 'UK'));

--select productname,UnitPrice from products where exists(Select SupplierID from Suppliers where Country like 'Usa');

/*select 
ProductName
,UnitPrice
from Products
where unitprice > all
(select UnitPrice from [Order Details] where Quantity >100);*/
--wyswietl zamowienia(order details) ktorych wartosc jest nizsza od sredniej w calym sklepie 
--select orderid from [Order Details] where (UnitPrice*Quantity*(1-Discount)) < (select avg((UnitPrice*Quantity*(1-Discount))) from [Order Details]);
--select firstname,lastname from Employees where  5000 < all(select ((UnitPrice*Quantity*(1-Discount))) from [Order Details]);
--select firstname from(
--select sum(UnitPrice*Quantity*(1-Discount)) as wartosc from Employees
--inner join orders on Employees.EmployeeID = Orders.EmployeeID
--inner join [Order Details] on orders.OrderID = [Order Details].OrderID
--group by [order details].orderid)as xD,employees 

--where wartosc > 10000


