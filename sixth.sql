use college1;
-- (group by) clause
-- generally used with aggregate functions eg
select city ,count(city)
from student
group by city
order by city desc;

select grade , count(rollno)
from student
group by grade
order by  grade asc;

-- (having) clause,it is similar to where
-- used to define some conditions on rows 
-- while dealing with groups we use having keyword
-- having clause is used to apply some conditions on groups
-- where clause is used  to apply conditions on rows
select city,count(rollno)
from student 
group by city
having max(marks)>90
order by count(rollno) desc;

 -- where is used before group by and having is used after group by
 -- here this is the general order(IMP)
 -- eg
 select city
 from student
 where grade = "A" or "B" or "C" -- "B" grade is not given to any student
 group by city
 having max(marks)>90
 order by count(rollno) desc; -- new coloumn added
 
 select city
 from student
 where grade = "A" or "B" or "C" -- "B" grade is not given to any student
 group by city
 having max(marks)>90
 order by count(rollno) desc; -- new coloumn not added
 
 --   --------------------------------------------------------------------
 -- (update) clause:
 -- update : is used to update existing rows
-- college decided to increase marks whose existing marks are less than 80

set sql_safe_updates = 0; -- there will no warnings when you try to update data

update student marks 
set marks = marks+1
where marks<80;  -- marks of pandurang gets updated from 67 to 68

select * from student;
-- ------------------------------------------------------------------------------
 
 insert into student values(6,"sanket",35,"D","pune");
 
delete from student
where marks<50;
-- delete from student (whole data from student may get deleted)
select * from student;















