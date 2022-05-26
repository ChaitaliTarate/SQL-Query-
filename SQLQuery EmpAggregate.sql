--aggregate function

create table tblEmployee(
id int primary key identity(1,1),
name varchar(20),
salary numeric(10,2),
city varchar(20),
deptname varchar(15)
)

insert into tblEmployee values('chaitali',35000,'pune','developer')
insert into tblEmployee values('pooja',55000,'Nagar','Accountant')
insert into tblEmployee values('sampada',45000,'mumbai','HR')
insert into tblEmployee values('shivani',22000,'solapur','Support')
insert into tblEmployee values('Meghana',15000,'pune','sales')
insert into tblEmployee values('vaishnavi',25000,'nagar','testing')
insert into tblEmployee values('aarti',60000,'sangali','banking')
insert into tblEmployee values('shubham',30000,'nagar','developer')
insert into tblEmployee values('manish',90000,'nagpur','agri')
insert into tblEmployee values('sarthak',45000,'nashik','banking')


select count ( distinct deptname) from tblEmployee

select count(*) from tblEmployee

select sum(salary) as SumSalary from tblEmployee

select avg(salary) as AvgSalary from tblEmployee

select max(salary) as MaxSalary from tblEmployee

select min(salary) as MinSalary from tblEmployee

select deptname,count(id) as empcount from tblEmployee
group by deptname

select city,count(id) as empcount from tblEmployee
group by city

select name,salary, salary=salary*0.12 from tblEmployee

