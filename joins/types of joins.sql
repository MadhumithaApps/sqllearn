----joining 2 table------------

select*from employee xe,department xd
where xe.deptno=xd.deptno;


---------------select particular column- /cartesian join -/----------
select xe.emp_no,xe.emp_name,xe.deptno,xe.salary,xd.dept_name,xd.location_no
from employee xe,department xd
where xe.deptno=xd.deptno;
-----------------------------------------
select*from department;
select*from employee;
--------------employee name descending---------------
select xe.emp_no,xe.emp_name,xe.deptno,xe.salary,xd.dept_name,xd.location_no
from employee xe,department xd
where xe.deptno=xd.deptno
order by xe.emp_name desc;
----------desc order by using join--------------------
select*
from employee xe,department xd
where xe.deptno=xd.deptno
order by xe.dob desc;


--------------column shortcut----------
select xe.*,xd.* from employee xe,department xd
where xe.deptno=xd.deptno;

----------3 table join---------------
select xe.*,xd.*,xl.*from employee xe,department xd,location xl
where xe.deptno=xd.deptno and xd.location_no=xl.location_no;

select*from employee;
select*from location;
select*from department;
----equi join---------------------
select employee.emp_no,employee.emp_name,employee.gender,employee.deptno
from employee ,department
where employee.deptno=department.deptno;
-------non equi join------------------
select xe.salary
from employee xe department xd
where xe.salary between xe.lowest_salary and xe.highest_salary;
--------------------------------------------------------------------------
outer join 
-----------------left outer join---------------------
select*from employee left join department
on employee.deptno=department.deptno;


select*from employee,department
where employee.deptno=department.deptno(+);

-----------------right outer join-----------------------
select*from employee right outer join department
on employee.deptno=department.deptno;

select*from employee,department
where employee.deptno(+)=department.deptno;


--------------self join----------------

alter table employee add(Manager_no number(5));
update employee
set manager_no=5
where emp_no=1;

update employee
set manager_no=2
where emp_no=8;

update employee
set manager_no=11
where emp_no=5;


select*from employee xe,employee xm
where xe.manager_no=xm.emp_no;

------self join manager list---------------
select
xe.emp_name,
xm.emp_name manager_name,
xe.dob
from employee xe,employee xm
where xe.manager_no=xm.emp_no;

------self join manager list (manager date of birth--------------
select
xe.emp_name,
xm.emp_name manager_name,
xm.dob
from employee xe,employee xm
where xe.manager_no=xm.emp_no;
-----------------natural join /cross join-------------------------------
select*from department;

select*from employee cross join department;
----------using syntax------------------------
select emp_name,dept_name
from employee join department using (deptno);
-----------------------------------------
------------------------
commit;

