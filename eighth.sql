use college1;
-- truncate -> diffenrent from drop 
-- it will not delete table, it will just delete data from the table
-- eg

create table nim(
count int default 0,
name varchar(50)
);

insert into nim (name) values ("om"),("soham");

select * from nim;


truncate table nim;

-- to delete particualar student who scored marks less than 80 (to delete that specific row)
delete from student 
where marks < 80;
-- ---------------------------------------------------------------------------
-- joins in sql
-- join is used to combine rows from two or more tables,based on related coloumns between them
-- innner join -> to get the common data between two tables(intersection)
-- left join -> (A union (A intersection B)) -- theae three  are outer joins
-- right join -> ((A intersection B) union B)
-- full join -> (A union B)

use college1;
create table A(
student_id int,
name varchar(50)
);

insert into A (STUDENT_ID,NAME) VALUES (101,"ADAM"),(102,"BOB"),(103,"CASEY");

create table B(
student_id int,
course varchar(50)
);

insert into B (student_id,course) values (102,"english"),(105,"math"),(103,"science"),(107,"computer science");
select * from B;
select * from A;

select * 
from A  as s-- (name of the first table)
inner join B as c --  (name of table to be joined with)
on s.student_id = c.student_id; -- look at the coloumns of A joined with B 
-- alias -> alternate/fake name(a and c are aliases A can be written as s and B can be written as c ) 

-- -------------------------------------------------------------------------------------------------------

-- for left join
select *
from A
left join B 
on A.student_id = B.student_id;
-- left table pura aaya to left join hai(first 2 coloumns are left table)
-- -------------------------------------------------------

-- right join -> to get whohle data of right table and intersection data b/w  A and B
select *
from A
right join B
on A.student_id = B.student_id;

/*note:select 
from B
right join A
on A.student_id = B.student_id;
will have different output (B pehle likha to B right join A(whole A + intersection ))*/

-- full join:(left table + right table + overlapping data
-- (overlapping vala data do baar nahi dikhega) as in full join left join and right join both are present
-- returns all records when there is a match in either left or right table
/*left join 
  union
  right join*/
  select * from A as a -- (as a,as b)is optional
  left join B as b
  on a.student_id = b.student_id
  union
  select * from A as a
  right join B as b
  on a.student_id = b.student_id;
  
  -- left execlusive -> A ka hai but B ka nahi hai(only A , but not intersection data and not B's data)
  -- note -> select karte waqt select ke s tak hi karna agar thoda sa bhi left gye to different output ayega(jab mouse se select karke run karoge)
  select * 
  from A
  left join B
  on A.student_id= B.student_id
  where B.student_id is null; -- (b/c intersection me B ka data not null rahega)
  
   -- right exclusive join
     select * 
  from A
  right join B
  on A.student_id= B.student_id
  where A.student_id is null;
  
  -- full exclusive join(bas intersection wala data nahi chahiye)  i.e 101,105,107 wala ayega
  select * 
  from A
  left join B
  on A.student_id= B.student_id
  where B.student_id is null
  union
    select * 
  from A
  right join B
  on A.student_id= B.student_id
  where A.student_id is null;
  
  -- ------------------------------------------------------------------------
  -- self join : alias is mandatory in self join
  -- means a table is joining with itself
  create table employee(
  id int primary key,
  name varchar(50),
  manager_id int
  );
  insert into employee values(101,"adam",103),(102,"bob",104),(103,"casey",null),(104,"donald",103);
  -- casey ka manager koi nahi hai,adam ki manager casey hai,bob ka manager donald hai(aisa hai)
  -- mujhe self join se sab logo ke mamagers ke naam chahiye hai 
  
  select * from employee;
  
  
  select a.name,b.name
  from employee as a
  join employee as b
  on a.id = b.manager_id;
  
  
  select *
  from employee as a
  join employee as b
  on a.id = b.manager_id;
  
  -- ------------------------------------------------------------------------
  -- union -> it is used to combine the result state of two or more select statements
/*union dont allow duplicates 
  union all allow duplicates
  
note: to use union
1)every select should have same no of coloumns
2)coloumns must have similar data types
3)coloumns in every select should have same order*/  
  
  -- eg
select name from employee
union 
select name from employee;  

select name from employee
union  all
select name from employee; 





