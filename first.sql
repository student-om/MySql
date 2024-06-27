create database if not exists first;
drop database if exists first;
CREATE DATABASE SECOND;
DROP DATABASE SECOND;

CREATE DATABASE college;

USE college;
CREATE TABLE student(
id INT PRIMARY KEY ,
name VARCHAR(50),
age INT NOT NULL
);

insert into student values(1,"om",19);
INSERT INTO STUDENT values(2,"soham",16);
INSERT INTO STUDENT values(3,"gohan",16);

select * from student;

show databases;
show tables;

-- --------------------------------------------------------------------------------------------


  
  
  



