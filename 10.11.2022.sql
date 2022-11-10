--select round(avg(unitPrice),2) as srednia, CategoryId from Products group by CategoryID;
--select count(ProductName) as "ilosc", SupplierId from Products where CategoryID != 6 group by SupplierID having count(ProductName) > 1 and supplierID != 28;
/*select count(CustomerID) as "Ilosc klientow",country from Customers where Country = 'France' Or Country = 'Canada' group by Country;
select count(CustomerID) as "Ilosc klientow",country from Customers group by Country having Country = 'France' Or Country = 'Canada';*/
--select count(CustomerID) as "Ilosc klientow",country from Customers where City != 'Paris' group by Country having Country = 'France' or Country = 'Canada';
--select left(CompanyName,1), Count(CompanyName) from Customers group by left(CompanyName,1)having Count(CompanyName) != 1;

--Ile trwa œrednio wysy³ka produktów
--Select avg(datediff(day,orderdate,shippedDate)) from Orders;
--select * from [Order Details];
--Policz ile dni srednio potrzebuje kazdy pracownik na zrobienie wysy³ki
--Select avg(datediff(day,orderdate,shippedDate)) as 'dni pracy', EmployeeID from Orders group by EmployeeID order by 'dni pracy' desc;
--Select avg(datediff(day,orderdate,shippedDate)) as 'dni pracy', EmployeeID from Orders where ShippedDate<RequiredDate group by EmployeeID order by 'dni pracy' desc , EmployeeId;
--select orderID , round(sum(Unitprice*Quantity-(Discount*1)),2) from [Order Details]group by orderid order by sum(Unitprice*Quantity-(Discount*1))desc;
select sum(unitprice) as suma, iif(convert(char,supplierid) is null, 'Razem' ,convert(char,supplierid)) ,/*iif(convert(char,Categoryid)is null, 'Bez kategoryjny',convert(char,supplierid))*/CategoryID  from products group by rollup(SupplierID ,categoryid) order by SupplierID, CategoryID;