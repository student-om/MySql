use college ;
create table temp3(
id int unique,
salary int default 25000 -- if we dont put salary it will be 25000 by default
);

insert into temp3 (id) values (1);
insert into temp3 (id,salary) values (2,30000),(3,40000);

select * from temp3;

-- check constraint -> it can limit the values allowed in a coloumn 

create table temp4(
id int,
 city varchar(50),
age int,
constraint age_and_city_check check(age>=18 and city="delhi")
);

create table temp5(
age int check(age>=18) 
);
