create database company
create table Salesman_Table(
	salesman_id int not null primary key,
    name varchar(40) not null,
    city varchar(40) not null,
    commission float not null
);
create table Customer_Table(
	customer_id int not null,
    cust_name varchar(40) not null,
    city varchar(40) not null,
    grade int not null,
    salesman_id int not null
);
insert into salesman_table(salesman_id,name,city,commission)
values
(5001,"James Hoog","New York",0.15),
(5002,"Nail","Paris",0.13),
(5005,"Pit Alex","London",0.11),
(5006,"Mc Lyon","Paris",0.14),
(5007,"Paul Adam","Rome",0.13),
(5003,"Lauson","San Jose",0.12);
insert into customer_table(customer_id,cust_name,city,grade,salesman_id)
values
(3002,"Nick Rimando","New York",100,5001),
(3007,"Brad Davis","New york",200,5001),
(3005,"Graham Zusi","California",200,5002),
(3008,"Julian Green","London",300,5002),
(3004,"Fabian Johnson","Paris",300,5006),
(3009,"Geoff Cameron","Berlin",100,5003),
(3003,"Jozy Altidor","Moscow",200,5007),
(3001,"Brad Guzan","London",000,5005);
select  name,cust_name,salesman_table.city from salesman_table,customer_table where salesman_table.city=customer_table.city;
select cust_name,salesman_table.city,name,commission from salesman_table,customer_table where salesman_table.salesman_id=customer_table.salesman_id;
select cust_name, salesman_table.city,name,commission from salesman_table,customer_table where salesman_table.commission>0.12;