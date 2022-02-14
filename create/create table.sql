create table employee 
(
emp_no number(4),
emp_name varchar2(30),
gender varchar2(2),
dob date,
deptno varchar2(30)
);
select*from employee;

insert into employee(emp_no,emp_name,gender,dob,deptno)
values(1,'arun','m','19-dec-1932',10);
commit;
insert into employee
values(2,'raju','m','24-oct-1990',20);
insert into employee
values(3,'jaya','f','10-jan-1984',30);
insert into employee
values(3,'rammu','m','20-apr-1987',10);

update employee
set emp_no=4 where emp_name='rammu';

insert into employee(emp_no,emp_name,gender,dob,deptno)
values(5,'priya','f','14-dec-1966',10);

delete employee
where emp_no=5;

insert into employee
values(6,'ravi','m','30-jan-1967',20);
insert into employee
values(7,'abi','f','21-jan-1993',10);
insert into employee
values(7,'mani','m','07-jun-1990',40);

update employee
set emp_no=8 where emp_name='mani';

insert into employee(emp_no,emp_name,gender,dob,deptno)
values(9,'suresh','m','31-dec-1999',10);
insert into employee
values(10,'bala','m','12-dec-1992',30);

commit;
insert into employee(emp_no,emp_name,gender,dob,deptno)
values(11,'suresh','m','31-dec-1989',40);
select*from employee;
alter table employee add(salary varchar2(40));
update employee 
set salary=1000 where emp_name='arun';
update employee
set salary=5000 where emp_name='raju';
update employee
set salary=2500 where emp_name='jaya';
update employee
set salary=3870 where emp_name='rammu';
update employee
set salary=2854 where emp_name='ravi';
update employee
set salary=806 where emp_name='abi';
update employee
set salary=500 where emp_name='mani';
update employee 
set salary=1290 where emp_name='suresh';
update employee
set salary=4000 where dob='31-dec-89';

commit;

