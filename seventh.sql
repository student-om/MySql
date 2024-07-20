use college;

create table dept(
id int primary key,
name varchar(50)
); 

insert into dept values ("101","IT"),("102","CSE"),("103","ENTC");


create table teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key(dept_id) references dept(id) -- dept table ka (id) coloumn
on delete cascade
on update cascade
);

insert into teacher values (101,"Adam",101),(102,"bob",103),(103,"casey",102);


update dept
set id = 108
where id = 101;
select * from dept;
select * from teacher; -- 108 is set in dept_id in place of 101 in teacher table


/* 
eg.
dept                                                        teacher
id(pk)      name                                         id      name     dept_id(fk)(science/english/hindi)
101     science                                         101      adam       101(adam is science teacher)
102     english                                         102      bob        103(bob is english teacher)
103     hindi                                       	103      casey       102(casey is hindi teacher)
go to Database->reverse engineering->select college database and see the parent and child relation between dept and teacher 
*/

/*cascading in foreign keys
cascading -> ek jagah change hua to dusri jagah bhi change hona chahiye
CHANGE HONA -> DELETE YA UPDATE HONA
dept table me ek row delete ho gyi to teacher table me bhi ek row delete ho jayegi
just have to use while declaring table: on update cascade
										on delete cascade
*/

/* schemas -> can mean design of the table
we use (alter) command to change the basic design of the table(to change the coloumn)

 */
 use college1;
 create table alterexample(
 name varchar(50)
 );
 
 insert into alterexample values ("soham"),("om");

-- to add a new coloumn
alter table alterexample
add age  int default 19 ;


select * from alterexample;

alter table newexample
add New_age  float default 77.1 ;


-- to rename coloumn(to change name of the table)
alter table alterexample
rename to  newexample;
select * from newexample;

-- to change coloumn name(rename + change datatype)
alter table newexample
change  new_age age_new float default 10.0;-- new_age(old name) age_new(new name)

insert into newexample values ("gom",0.0,1.1);
insert into newexample values ("gom1",null ,null );

-- to modify coloumn(no rename, just to change the datatype,new values cannot be inserted by using default)
alter table newexample
modify New_age  int default 10 ;


-- to delete a coloumn
alter table newexample
drop new_age;

alter table newexample
drop age_new;





