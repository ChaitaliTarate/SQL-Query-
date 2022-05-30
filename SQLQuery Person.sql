Create table Person1(
personId int primary key,
Name varchar(20) not null,

)



create table Orders(
orderId int,
orderNo int,
personId int,
constraint pk_order primary key(orderId),
constraint pk_order_person foreign key (personId) references Person1(personId)
)


alter table Orders add constraint pk_order_person1 
foreign key (personId) references Person1(personId)

sp_help Person1







--create table Person1(
--personId int,
--name varchar(40),
--age int,
--constraint chk_age check(age>=18)
-- country varchar(20) default 'india'
--)


alter table Person1 add age int not null

alter table Person1  add constraint chk_age check(age>=18)


 --alter table Person1 drop constraint chk_age

 --mysql
 --alter table Person1 drop check chk_age


 --table is already exist & want to add col with deafult value
 alter table Person1 add country varchar(20) default 'india'

--column is already exist $ want to add default constarint
 alter table Person1 add constraint default_con default 'india for country'

 --mysql
 --alter table Person1 alter country set default 'india'

 --oracle
 --alter table Personn1 modify country default 'india'



 create index index_person on Person1 (Name,country);

 create unique index index_person2 on Person1 (personId);

  
  drop index Person1.index_person2

  --mysql
--  alter table persoon drop index index_person2



--------identity
--create table Person1(
--personId int primary key identity(1,1)
---mysql
--personId int primary key autoincrement

--)




alter table Person1 add personId int identity(1,1)
  
 -- truncate table Person1

 -- drop table Person1


 insert into Person1 values(1,'manish',20,'india')
 insert into Person1 values(2,'shivani',30,'india')
 insert into Person1 values(3,'shubham',18,'india')
 insert into Person1 values(4,'sampada',25,'india')
 insert into Person1 values(5,'sayali',19,'india')
 insert into Person1 values(6,'sarthak',40,'india')
 insert into Person1 values(7,'mrunal',36,'india')
 insert into Person1 values(8,'priti',40,'india')
 insert into Person1 values(9,'rohit',28,'india')
 insert into Person1 values(10,'meghana',30,'india')
insert into Person1 values(11,'meghana',35,'india')
	
	
	
 update Person1 set age=25 where personId=2

 	 update Person1 set country='australia' where personId=4		   
 update Person1 set country='USA' where personId=2


 delete from Person1 where personId=5

 select * from Person1


 select name,age from Person1

 select name,age from Person1 where personId=1
 --  <> not operator
 select *  from Person1 where personId<3
select *  from Person1 where personId<>3
select *  from Person1 where personId>3
select *  from Person1 where personId<=3


 select distinct country from Person1 

  select distinct Name from Person1 

  select * from Person1 where age between 23 and 27

  select * from Person1 where personId in(1,2,3)

  
  select * from Person1 where personId not in(1,2,3)

  select * from  Person1 where country in('USA','australia','india')

  select * from  Person1 where country not in('USA','australia')

  select * from Person1 where country='USA' and age>20

  select * from Person1 where country='USA'or country='australia'

  select * from Person1 where not country='USA'

  select * from Person1 where Name like 's%'

  --end with a
   select * from Person1 where Name like '%a'

   --satrt with & end with any letter having n in letter
    select * from Person1 where Name like '%n%'

	--full match letter start with S having next 4 more letters
	select * from Person1 where Name like 'P____'

	select * from Person1 where Name like '____i'

	select * from Person1 where Name like '[sh]%'

	insert into Person1 values(12,'namita',30,null)

	select * from Person1 where country is null
	select * from Person1 where country is not null

	select * from Person1
	order by age

	select * from Person1
	order by country desc


	
--group by clause
--group by groups rows that have a same values into the summary
--e.g find no of person in each country
--group the similar col data -country,count
--rule group by statement cane be used with aggregate function
--rue the column that we will put in the group by clause that can be used with select statement



	select country,count (personId) as PersonCount from Person1
	group by country


	select * from Person1
	select * from Orders

	alter table orders add productname varchar(20)
	alter table orders add price int

	insert into Orders values(1,101,1,'Keyborad',999)
	insert into Orders values(2,102,1,'mouse',799)
	insert into Orders values(3,103,5,'laptop',23999)
	insert into Orders values(4,104,5,'mobile',26000)
	insert into Orders values(5,105,5,'led screen',11999)
	insert into Orders values(6,106,9,'t shirt',999)
	insert into Orders values(7,107,9,'mouse',999)


--1.inner join
	select p.name,p.country,o.orderNo,o.productname,o.price
	from Person1 p
	inner join Orders o on o.personId=p.personId;

--2Left Join
	select p.name,p.country,o.orderNo,o.productname,o.price,o.orderId
	from Person1 p
	left join Orders o on o.personId=p.personId;

--3.Right Join
	select p.name,p.country,o.orderNo,o.productname,o.price,o.orderId
	from Person1 p
	right join Orders o on o.personId=p.personId;

--4.Full join
	select p.name,p.country,o.orderNo,o.productname,o.price,o.orderId
	from Person1 p
	full join Orders o on o.personId=p.personId;

	
--5.self join
	
	create table Manager(
	id int primary key,
	name varchar(20)
	)

	select * from tblEmployee

	alter table tblEmployee add managerid int
	Update tblEmployee set managerid=1 where id in(2,3,4,5)
	Update tblEmployee set managerid=6 where id in(7,8,9,10)
	Update tblEmployee set managerid=11 where id in(12)

	select e1.name as empName, e2.name as managerName
	from tblEmployee e1,tblEmployee e2
	where e1.managerid=e2.id

	create table tblStudy(
	studid varchar(5),
	courseId varchar(5), 
	year int
	)
	
	
	insert into tblStudy values('s1','c1',2016)
	insert into tblStudy values('s2','c2',2017)
	insert into tblStudy values('s1','c2',2017)



	select s1.studid,s1.courseId,s1.year
	from tblStudy s1,tblStudy s2
	where s1.studid=s2.studid and s1.courseId<>s2.courseId and s1.year<>s2.year

--Cross Join
 alter table tblEmployee drop column deptName

 create table dept(
 did int primary key,
 dname varchar(10)
 )


 alter table tblEmployee add did int


 alter table tblEmployee add constraint fk_dept_tbleEmployee foreign key(did) references dept(did)

	Update tblEmployee set did=1 where id in(2,3,4,5)
	Update tblEmployee set did=4 where id in(7,8,9,10)
	Update tblEmployee set did=7 where id in(12)

	insert into dept values(1,'HR')
	insert into dept values(2,'Developer')
	insert into dept values(3,'testing')
	insert into dept values(4,'account')
	insert into dept values(5,'HR')


	select e.name,e.salary,d.did,d.dname
	from tblEmployee e
	inner join dept d on d.did=e.did;

	select e.name,e.salary,d.did,d.dname
	from tblEmployee e
	inner join dept d on d.did=e.did
	where d.dname='HR'

	
	select e.name,e.salary,d.did,d.dname
	from tblEmployee e
	inner join dept d on d.did=e.did
	where d.dname='HR' order by salary

	select e.name,e.salary,d.did,d.dname
	from tblEmployee e
	inner join dept d on d.did=e.did
	where d.dname='HR' order by salary desc

	select e.name,e.salary,d.did,d.dname
	from tblEmployee e
	inner join dept d on d.did=e.did
	where d.dname='account' order by name 


	select e.name,e.salary,d.did,d.dname
	from tblEmployee e
	inner join dept d on d.did=e.did
	where d.dname='HR' order by name,salary

 select * from tblEmployee


 select * from dept


 --Union and Union All
	select city from Customer where city='pune'
	union all
	select city from supllier where city='pune'

--having clause
	select country,count(personid)  as perosncount from Person1
	group by country having count(personId)>5

	select country ,count(personid)as personcount from Person1
	group by country
	having country in('india','USA')
	order by count(personid)

	select dname,count(did) as empcount from dept
	group by dname
	having dname in('HR','account')
	order by count(did)

--build in functions
--substring,concat,len,upper,lower,trim ,ltrim,rtim,round ,replace,reverse

	update tblEmployee set salary=34998.99 where id=1

	select SUBSTRING(name,0,3) as tempname from tblEmployee where id=7
	
	select concat(name,'',city) as info from tblEmployee
	
	select name,LEN(name) as length from tblEmployee

	select UPPER(name )as name from tblEmployee

	select LOWER(name )as name from tblEmployee	

	select ROUND(salary,2)as salary from tblEmployee

	select ROUND(345.889,1)as roundvalue

	select CAST(salary as varchar(20))from tblEmployee

	select REVERSE(name) as reversename from tblEmployee

	select salary,RANK() over (order by salary) as salaryrank from tblEmployee


	select replace(name,'aarti','kirti') as info from tblEmployee where id=7


	--28/05/22

	--SubQueries/innerQueries

--max salary
select max(salary) as maxsalary from tblEmployee
select name,salary from tblemployee where salary=(select max(salary) from tblEmployee)

--2nd hieghest salary
select name,salary from tblemployee where salary=(
select MAX(salary) from tblEmployee where salary<>(select max(salary) from tblEmployee)
)

--3rd heighest salary

select name,salary from tblemployee where salary=(
select max(salary) from tblEmployee where salary<(
select max(salary) from tblEmployee where salary<>(select max(salary) from tblEmployee)
)
)

select name,salary from tblemployee where salary=(
select max(salary) from tblEmployee where salary<(
select max(salary) from tblEmployee where salary<>(50000)
)
)  
select name,salary from tblemployee where salary=(
select max(salary) from tblEmployee where salary<(
35000
)
)   
select name,salary from tblemployee where salary=(
34998.99
)                         

create view highestsalary as
select name,salary from tblemployee where salary=(
select max(salary) from tblEmployee where salary<(
select max(salary) from tblEmployee where salary<>(select max(salary) from tblEmployee)
)
)

select * from highestsalary

select * from tblEmployee where id in
(
select id from tblEmployee where salary>35000
)

select * from Product1

select * from Person1
select * from Orders

--display person nam who has the product whos price is>5000
select p.name , o.price
from Person1 p inner join Orders o on p.personId=o.personId
where price>500

--display name  of the emps whoe take higher salary than the emp id 4
select name,salary from tblEmployee where salary >
(
select salary from tblEmployee where id=4
)
--select emp details whos city is same as id 1
select name,city from tblEmployee where city =
(
select city from tblEmployee where id=1
)

--display emp details whoes salary is greater than avg salry of all emps
select * from tblEmployee where salary >
(
select AVG(salary) from tblEmployee 
)

--find emp whos salary is more than avg salry of any dept
select * from tblEmployee where salary >all
(
select AVG(salary) from tblEmployee group by did
)

--display sum of salary dept wise
select did,Sum(salary) salary from tblEmployee group by did

--dispaly emp  who get more than avg salary of sales dept
select * from tblEmployee where did in
(
select did from dept where dname like'HR%'
)
and salary>(select avg(salary) from tblEmployee)

select * from dept

--subqueries with update statement

--update the salary by 30% of emp who work  in dev dept
update tblEmployee set salary=salary*0.30 where did =(select did from dept where dname='Developer')

--subquery with delete statment
delete from tblEmployee where did=(select did from dept where dname='sales')

select *
from [ThinkBridge].[dbo].Product p
join [ThinkQ].[dbo].tblEmployee e on e.id=p.Id

select * from tblEmployee

select * from dept




