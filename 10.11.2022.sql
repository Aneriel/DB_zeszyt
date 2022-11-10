--select round(avg(unitPrice),2) as srednia, CategoryId from Products group by CategoryID;
--select count(ProductName) as "ilosc", SupplierId from Products where CategoryID != 6 group by SupplierID having count(ProductName) > 1 and supplierID != 28;
/*select count(CustomerID) as "Ilosc klientow",country from Customers where Country = 'France' Or Country = 'Canada' group by Country;
select count(CustomerID) as "Ilosc klientow",country from Customers group by Country having Country = 'France' Or Country = 'Canada';*/
--select count(CustomerID) as "Ilosc klientow",country from Customers where City != 'Paris' group by Country ;