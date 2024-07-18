create database college1;
use college1;

create table student(
rollno int primary key,
name varchar(50),
marks int check (marks<=100), -- check is used while inserting data into table
grade varchar(50) not null,
city varchar(20)
);

insert into student(rollno,name,marks,grade,city)
values(1,"om",99,"A","pune"),
(2,"pratik",87,"B","mumbai"),
(3,"dnyanraj",99,"A","latur"),
(4,"shashwat",100,"A","latur"),
(5,"parmeshwar",67,"C","latur");

select rollno,name from student ;
select distinct city from student; -- will not give duplicate values for city coloumn

-- operators which are used with where(and,or,in,between,not in)
select * from student where marks+10>80 and city="latur"; -- where will be used to see the data(to see the sorted out data)
select * from student where marks between 80 and 100;
select * from student where city in ("latur","jalgaon"); -- jalgaon us not present in the table still there is no error
select * from student where city not in ("latur");

-- -----------------------------------------------------------------------
-- limit clause : sets a limit on number of rows to be returned
select * from student limit 3;
select * from student where marks>50 limit 2;

-- order by clause
select * from student order by city; -- no asc or dsc written marks by default will be ascending
select * from student where city in("latur") order by marks desc ;

-- to get marks of top 3 students
select * from student order by marks desc limit 3;

-- aggregate functions: performs calculation on a set of values and returns a single value
select max(marks) from student;
select min(marks) from student;
select avg(marks) from student;
select count(name) from student;
select sum(marks) from student;