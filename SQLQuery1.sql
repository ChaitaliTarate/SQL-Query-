Create table Person(
personid int,
personName varchar(20),


)




--alter  table person add constraint un_person unique(personId,contact)

--alter table person drop constraint un_person

alter table person alter column personName varchar(40) not null

alter table Person add city varchar(50)

alter table Person drop column city

alter table Person alter column personName varchar(40)

--oracle
--alter table Person modify column personName varchar(40)

Create table Orders(
orderID int,
orderNo int,
pesronid int,
constraint pk_order primary key(orderId),
constraint pk_order_person foreign key(personid) references Person(personid)
)

select * from Person