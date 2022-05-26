create table Employee(
empid int primary key,
firstName varchar(20),
lastName varchar(20),
salary int,
city varchar(20),
deptname varchar(20)
)



insert into Employee values(1,'chaitali','tarate',35000,'pune','developer')
insert into Employee values(2,'pooja','tarate',55000,'Nagar','Accountant')
insert into Employee values(3,'sampada','gunjal',45000,'mumbai','HR')
insert into Employee values(4,'shivani','mane',22000,'solapur','Support')
insert into Employee values(5,'Meghana','Shitole',15000,'pune','sales')
insert into Employee values(6,'vaishnavi','navale',25000,'nagar','testing')
insert into Employee values(7,'aarti','patil',60000,'sangali','banking')
insert into Employee values(8,'shubham','kedar',30000,'nagar','developer')
insert into Employee values(9,'manish','tarate',90000,'nagpur','agri')
insert into Employee values(10,'sarthak','patil',45000,'nashik','banking')


--1. display all employess from table
 select *  from Employee

 --2. display emp who work in sales departmen
 select * from Employee where deptname='sales'

 -- 3. display emp who's salary is greater than 35000
 select * from Employee where salary>35000

 --4. display emp who belong to pune & mumbai city
 select * from Employee where city= 'pune' or city='mumbai'

 -- 5. display emp who's salary is in between 25,000 - 30,000
select * from Employee where salary between 25000 and 30000

 -- 6. display emp name who's name start with 'M'
 select * from Employee where firstName like 'm%'

 --7. display emp name who's name end with 'A'
 select * from Employee where firstName like '%a'

 --8. display unique department from emp table
 select * from Employee where deptname='developer'

 --9. display emp those are not working in hr & sales dept
 select * from Employee where deptname not in('HR','sales')


