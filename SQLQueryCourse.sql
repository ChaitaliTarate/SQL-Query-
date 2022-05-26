Create table Course(
id int primary key,
name varchar(20) not null

)


alter table Course add ctype varchar(20)

--drop ctype column
--alter table Course drop column ctype


sp_rename 'Course.ctype','coursetype'

alter table Course alter column name varchar(30)

alter table Course add constraint un_Course unique(id,details)


select * from Course

 