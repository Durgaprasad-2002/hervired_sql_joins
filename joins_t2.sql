select * from worker_table where  Salary between 100000 and 500000;
select * from worker_table where right(First_Name,1)='h' and length(First_Name)=6;
select * from worker_table where Joining_Date like '2014-02%';
select * from worker_table where Salary >= 50000 and  Salary<= 100000;