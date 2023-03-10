create database WorkerHub
create table worker_table(
	Worker_ID int not null primary key,
    First_Name varchar(40) not null,
    Last_Name varchar(40) not null,
    Salary int not null,
    Joining_Date varchar(40) not null,
    Department varchar(20)
);
insert into worker_table values (001,"Monika","Arora",100000,"2014-02-20 09:00:00","HR"),
(002,"Niharika","Verma",80000,"2014-02-20 09:00:00","Admin"),
(003,"Vishal","Singhal",300000,"2014-02-20 09:00:00","HR"),
(004,"Amitabh","Singh",500000,"2014-02-20 09:00:00","Admin"),
(005,"Vivek","Bhati",500000,"2014-02-20 09:00:00","Admin"),
(006,"Vipul","Diwan",200000,"2014-02-20 09:00:00","Account"),
(007,"Satish","Kumar",75000,"2014-02-20 09:00:00","Account"),
(008,"Gettika","Chouhan",90000,"2014-02-20 09:00:00","Admin");
select First_Name as WORKER_NAME from worker_table;
select POSITION("a" IN First_Name ) As positionIs from worker_table where First_Name="Amitabh";
select REPLACE(First_Name, 'A', 'a') as FirstName from worker_table where First_Name="Amitabh"; 
select * from worker_table order by First_Name ASC;
select First_Name, Department from worker_table order by First_Name asc ,Department desc;
select * from worker_table where First_Name="Vipul" or First_Name="Satish"
select * from worker_table where Department="admin";
select * from worker_table where First_Name like 'a%';