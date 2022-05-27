
---------------HomeWork-----------------


--Write a query to display first_name and last_name using alias ‘First Name’ & ‘Last Name’ from employee table
select * from Employee where firstName like 'c%' and lastName like 't%'

--Write a query to get unique Employee ID from employee table
select * from Employee where empid=5

--Write a query to get all employee details from employee table display in descending order   
select * from Employee 
order by firstName desc
  
--Write a query to display employee details with salary, calculate the PF as 12 % of basic salary & display as separate column
 select firstname,salary, salary=salary*0.12 from Employee
 
--Write a query to get total salaries payable to all employees from employee table
select sum(salary) as SumSalary from  Employee

--Write a query to get max and min salary of employee
select max(salary) as MaxSalary from Employee

--Write a query to get number of employees are working in company
select count(empid) as Totalemp from Employee

--Write a query to get the number of unique designation in the company
select count ( distinct deptname) from Employee

--Write a query to display emp_name as ‘Name’ in upper case
--select UPPER(firstName) AS UppercaseFirstName From Employee
select firstName as Name from Employee

--Write a query to get first 10 records from the employee table
select TOP 10 * from Employee
--select * from Employee where empid between 1 and 10



Create table Customer(
custId int primary key identity(1,1),
cName varchar(20),
country varchar(20),
city varchar(20),
postalcode int
)

 


insert into Customer values('dona','Moscow','London',123456)
insert into Customer values('sam','Germany','Berlin',123457)
insert into Customer values('ronnie','Moscow','London',123458)
insert into Customer values('rita','Germany','Berlin',123459)
insert into Customer values('rohit','India','Mumbai',123451)
insert into Customer values('raj','France','Paris',123452)
insert into Customer values('siya','Japan','Tokyo',123453)
insert into Customer values('john','Canada','Oslo',null)
insert into Customer values('naira','Korea','Seoul',null)
insert into Customer values('ram','India','Pune',123454)
insert into Customer values('sham','India','anagar',123455)
insert into Customer values('sweety','Norway','Europ',123461)






--1.Write a statement that will select the City column from the Customers table
select city from Customer

--2.Select all the different values from the Country column in the Customers table.
select count(distinct Country) as Cities from Customer

--3.Select all records where the City column has the value "London
select * from Customer where city='London'

--4.Use the NOT keyword to select all records where City is NOT "Berlin".
select * from Customer where city not in('Berlin')

--5.Select all records where the CustomerID column has the value 23.
select * from Customer where custId=5

--6.Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.
select * from Customer where city='Berlin' and postalcode=123459

--7.Select all records where the City column has the value 'Berlin' or 'London'.
select * from Customer where city='Berlin' or city='London'

--8.Select all records from the Customers table, sort the result alphabetically by the column City.
select * from Customer
order by city 

--9.Select all records from the Customers table, sort the result reversed alphabetically by the column City.
select * from Customer
order by city desc

--10.Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City
select * from Customer
order by country,city
 
--11.Select all records from the Customers where the PostalCode column is empty.
select * from Customer where postalcode is null

--12.Select all records from the Customers where the PostalCode column is NOT empty.
select * from Customer where postalcode is not null

--13.Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".
Update Customer set city='Oslo' ,country='norway' where custId=12

--14.Delete all the records from the Customers table where the Country value is 'Norway'.
delete from Customer where country='norway'

select * from Customer


create table Prod(
pId int primary key identity(1,1),
pName varchar(20),
price int 
)

insert into Prod values('pen',500)
insert into Prod values('Vehicle',50000)
insert into Prod values('Books',4000)
insert into Prod values('laptop',35500)
insert into Prod values('clothes',7000)
insert into Prod values('table',2000)

--15.Use the MIN function to select the record with the smallest value of the Price column.
select Min(Price) as MinPrice from Prod 

--16.Use an SQL function to select the record with the highest value of the Price column.
select Max(price) as MaxPrice from Prod

--17.Use the correct function to return the number of records that have the Price value set to 20
select COUNT(*) as records from Prod where Price=500

--18.Use an SQL function to calculate the average price of all products.
select AVG(price) as AvgSalary from Prod

--19.Use an SQL function to calculate the sum of all the Price column values in the Products table
select Sum(price) as SumPrice from Prod

--20.Select all records where the value of the City column starts with the letter "a"
select * from Customer where cName like 'd%'

--21.Select all records where the value of the City column ends with the letter "a".
select * from Customer where cName like '%m'

--22.Select all records where the value of the City column contains the letter "a".
select * from Customer where city like '%a%'

--23.Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
select * from Customer where city like 'P%e'

--24.Select all records where the value of the City column does NOT start with the letter "a".
select * from Customer where city not like 'B%'

--25.Select all records where the second letter of the City is an "a".
select * from Customer where city like '_o%'

--26.Select all records where the first letter of the City is an "a" or a "c" or an "s".
select * from Customer where city like '[lts]%'

--27.Select all records where the first letter of the City starts with anything from an "a" to an "f".
select * from Customer where city like '[a-f]%'

--28.Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
select * from Customer where city not like '[lts]%'

--29.Use the IN operator to select all the records where the Country is either "Norway" or "France".
 select * from  Customer where country in('india','Germany')

--30.Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".
select * from Customer where country not in('Korea','India')

--31.Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
select * from Prod where price between 500 and 4000

--32.Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
select * from Prod where price not between 500 and 4000

--33.Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.
select * from Prod where pName between  'clothes' and 'table'

--34.When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.
select postalcode as pno from Customer

--35.When displaying the Customers table, refer to the table as Consumers instead of Customers.
select* from Customer as Consumers

--36.List the number of customers in each country.
select count (custId)as records,country from Customer group by country


--37.List the number of customers in each country, ordered by the country with the most customers first.
select count (custId)as Custrecords,country from Customer group by country

--38.Write the correct SQL statement to create a new database called testDB.
create database testDB

--39.Write the correct SQL statement to delete a database named testDB
drop database testDB

--40.Add a column of type DATE called Birthday in Persons table
alter table Person1 add Birthdate date

--41.Delete the column Birthday from the Persons table
alter table Person1 drop column Birthdate


select * from Customer
select * from Prod
select * from Person1