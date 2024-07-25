use college1;

/*sub queries : sub query/inner query/nested query is a query within another sql query
sub query can be used within ->
1)select
2)from
3)where
*/

select avg(marks)
from student;

select name,marks 
from student
where marks > 90.40; -- 90.40 is the average marks of the class

-- by using sub query we can solve this dynamically
-- eg if the avg marks is not 90.40 then the students selected would be different
-- dynamic approach (changes itself according to updates in data in the table)
select  name,marks
from student
where marks > (select avg(marks) from student);
-- ------------------------------------------------------------------------------------
select name,rollno
from student
where  rollno%2 = 0;  

-- these code using sql sub queries
select name 
from student
where rollno in (
select rollno
from student
where  rollno%2 = 0);

-- sub query within from
-- to find topper from latur
select max(marks)
from (select *
from student
where city = "latur")as a;
-- a is a table which consists of data of students from latur
-- alias is mandatory when we use sub queries using (from)

-- using sub query within select
select (select max(marks)from student), name from student;
-- we use where as a sub query in maximum cases
-- ----------------------------------------------------------------------------------------

-- view in sql
-- view is a virtual table (temporary table) which we can take data of any type
-- a table may ci=ontain numerous amount of data but it is not for some people to see that all data
-- they should see the data that we want to show them
-- that is why we use view in sql



