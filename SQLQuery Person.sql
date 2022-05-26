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

