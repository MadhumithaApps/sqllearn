----joining 2 table------------

select*from x_employee xe,department xd
where xe.deptno=xd.deptno;


---------------select particular column- /cartesian join -/----------
select xe.emp_no,xe.emp_name,xe.deptno,xe.salary,xd.dept_name,xd.location_no
from x_employee xe,department xd
where xe.deptno=xd.deptno;
-----------------------------------------
select*from department;
select*from x_employee;
--------------employee name descending---------------
select xe.emp_no,xe.emp_name,xe.deptno,xe.salary,xd.dept_name,xd.location_no
from x_employee xe,department xd
where xe.deptno=xd.deptno
order by xe.emp_name desc;
----------desc order by using join--------------------
select*
from x_employee xe,department xd
where xe.deptno=xd.deptno
order by xe.dob desc;


--------------column shortcut----------
select xe.*,xd.* from x_employee xe,department xd
where xe.deptno=xd.deptno;

----------3 table join---------------
select xe.*,xd.*,xl.*from x_employee xe,department xd,location xl
where xe.deptno=xd.deptno and xd.location_no=xl.location_no;

select*from x_employee;
select*from location;
select*from department;
----equi join---------------------
select x_employee.emp_no,employee.emp_name,employee.gender,employee.deptno
from x_employee ,department
where x_employee.deptno=department.deptno;
-------non equi join------------------
select xe.salary
from x_employee xe department xd
where xe.salary between xe.lowest_salary and xe.highest_salary;
--------------------------------------------------------------------------
outer join 
-----------------left outer join---------------------
select*from x_employee left join department
on x_employee.deptno=department.deptno;


select*from x_employee,department
where x_employee.deptno=department.deptno(+);

-----------------right outer join-----------------------
select*from x_employee right outer join department
on x_employee.deptno=department.deptno;

select*from x_employee,department
where x_employee.deptno(+)=department.deptno;


------------------------
commit;
select*from x_employee;
--------------self joins------------
alter table x_employee add(Manager_no number(5));
update x_employee
set manager_no=5
where emp_no=1;

update x_employee
set manager_no=2
where emp_no=8;

update x_employee
set manager_no=11
where emp_no=5;


select*from x_employee xe,employee xm
where xe.manager_no=xm.emp_no;

------self join manager list---------------
select
xe.emp_name,
xm.emp_name manager_name,
xe.dob
from x_employee xe,employee xm
where xe.manager_no=xm.emp_no;

------self join manager list (manager date of birth--------------
select
xe.emp_name,
xm.emp_name manager_name,
xm.dob
from x_employee xe,employee xm
where xe.manager_no=xm.emp_no;
-----------------natural join /cross join-------------------------------
select*from department;

select*from x_employee cross join department;
----------using syntax------------------------
select emp_name,dept_name
from x_employee join department using (deptno);
-----------------------------------------
commit;
