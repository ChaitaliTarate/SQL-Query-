create table Salesman(
smid int primary key,
sname varchar (20),
city varchar(20),
commission int
)


create table Customer1(
cid int primary key,
cname varchar(20),
city varchar(20),
grade varchar(5),
smid int
constraint fk_sales_cust foreign key(smid) references Salesman(smid)
)


create table Orders(
oid int primary key,
purchase_amt int, 
or_date date,
smid int,
cid int,
constraint fk_cust_ord foreign key(cid) references Customer1(cid),
constraint fk_sales_ord foreign key(smid) references Salesman(smid)
)

select * from Salesman
select * from Customer1
select * from Orders

insert into Salesman values(1,'arti','latur',500)
insert into Salesman values(2,'puja','nanded',1500)
insert into Salesman values(3,'namita','mumbai',1000)
insert into Salesman values(4,'sheta','pune',2000)
insert into Salesman values(5,'chaitali','nagar',2000)

insert into Customer1 values(10,'john','london','A',1)
insert into Customer1 values(20,'dona','germany','A+',1)
insert into Customer1 values(30,'harry','USA','B',2)
insert into Customer1 values(40,'maxwell','Austrelia','C',2)
insert into Customer1 values(50,'gauri','China','A',3)

insert into Orders values(101,5000,'2020-12-27',1,10)
insert into Orders values(102,2000,'2002-02-25',2,20)
insert into Orders values(103,6000,'2022-10-10',3,30)
insert into Orders values(104,1500,'2021-1-15',4,40)
insert into Orders values(105,10000,'2019-5-22',5,50)


	select city,count (cid) as CityCount from Customer1
	group by city
	    
	select * from  Salesman where city in('pune','mumbai')

	select s.sname,s.city,s.commission
	from Salesman s
	inner join Customer1 c on c.cid=c.cid
	where c.cname='harry' order by city

	select city,count(cid)  as citycount from Customer1
	group by city having count(cid)<4