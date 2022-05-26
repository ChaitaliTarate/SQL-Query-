Create table Courses(
Id int,
Name varchar(20),
CType varchar(20)

constraint pk_Courses primary key(Id)
)


alter table Courses drop constraint pk_Courses


alter table Courses add constraint pk_Courses primary key(Id)





sp_help Courses
