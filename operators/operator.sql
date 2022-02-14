------rules of operator---------------
---1st queries data types  and 2rd queries data types same
-------no of coloumn must be same in both the tables------------

=-----------------creaate new table=------------------------


create table dept_history
(
emp_no NUMBER(5),
emp_name varchar2(50),
gender varchar2(2),
dept_no number(5)
);
insert into dept_history(emp_no,emp_name,gender,dept_no)
values(1,'james','m',10);
insert into dept_history
values(2,'veera','m',50);
insert into dept_history
values(3,'william','m',30);
insert into dept_history
values(32,'jenifer','f',20);


update dept_history
set emp_no=23
where emp_name='veera';

update dept_history
set emp_no=10
where emp_name='william';


-----------------operator-------------

select*from dept_history;
-----------------union all operators-----------------------
select emp_name,dept_no from x_employee;
union all
select emp_name,dept_no from dept_history;
-------------------------------------------
==========table name using operator=========
select 'employee table name',emp_name,deptno from x_employee
union all
select 'dept_history table name',emp_name,dept_no from dept_history;

-------------------------------------------
desc dept_history;
desc x_employee;
select*from employee;
select*from department;
select*from dept_history;

update dept_history
set emp_name='abi'
where dept_no=10;

-------------------union---------------
select emp_no,emp_name, deptno from x_employee
union
select emp_no, emp_name,dept_no from dept_history;

-----------------intersect------------
select emp_no,emp_name,deptno from x_employee
intersect
select emp_no,emp_name,dept_no from dept_history;

----------------minus---------------
select emp_no,deptno from x_employee
minus
select emp_no,dept_no from dept_history;



commit;
