
--select len ('abcd');
--select top 1 with ties len(Productname)as 'dlugosc',ProductName from products order by len(ProductName)desc;
--select SUBSTRING('abcdefgh',4,3);

--select left(contactname,CHARINDEX(' ',contactname))as Name,substring(contactname,CHARINDEX(' ',contactname),255)as Surname from Customers;
--select iif(1=0,'tak','nie')'
/*select lastname,firstname,
case
when TitleOfCourtesy like 'Mr.' then 'Pan'
when TitleOfCourtesy like 'Ms.' then 'Panna'
when TitleOfCourtesy like 'Mrs.' then 'Pani'
else 'inne'
end as tytul
from Employees;
*/
/*select ProductName,UnitPrice,
case 
when Unitprice < 20.00 then 'Tanie'
when Unitprice between 20.00 AND 50.00 then 'Średnie'
when Unitprice between 50.00  AND 100.00 then 'Drogie'
when Unitprice >=100 then 'Bardzo Drogie'
else 'zepsulo' 
end as OcenaKosztowa
from Products
order by UnitPrice desc;*/
--Select case when (substring('1234567891',10,1) % 2) = 0  then 'Kobieta' else 'Mężczyzna';
--select iif((substring('12345678031',10,1) % 2) = 0,'Kobieta','Mężczyzna') as "Plec_i_guess?";

--select replace('abcedfgddd','d','$');
--select cast('7656' as int);
--select convert (int,'987');
--select convert (real,replace('987,89',',','.'));
--select convert(text,convert(varchar,unitprice)) from Products;
--select concat('abcd',' ','efgh', 'aa ');
--select * from Employees;
--select concat(upper(Titleofcourtesy),' ',FirstName,' ',LastName) as 'tytul imie nazwisko ' from Employees;
