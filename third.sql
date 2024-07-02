use college;

create table student1(
rollno int primary key,   -- need unique,should not be null
name varchar(50) 

);

insert into student1
(rollno,name)  -- if data type is same (batana acha rahega)

values
(1,"om"),
(2,"soham");

insert into student1 values(3,"tom"); -- to put data 

select * from student1; -- select is used to view data

-- there can be  only 1 primary key for all the coloumns 
-- i.e only one coloumn in a table can contain primary key(constraints)
--  constraints specifies specific rules for the data used in the table
-- (UNIQUE) is also a constraint for a coloumn there should be a unique value
-- eg col2 int unique (rollno int unique)

create table temp1(
id int unique
);

insert into temp1
(id)
values
(1),(2),(3),(4),(5);

select * from temp1;




-- if a primary key of one table is used in another table 
-- then that coloumn is known  as foreign key 
-- foreign keys can be duplicate and null




-- ----------------------------------------------------

create table temp2(
id  int ,
name varchar(50),
primary key(id,name) -- i.e combination cannot be same ,individually they can be same
--  eg id name
--  1   om      i.e combination is different
 -- 1   soham
);


