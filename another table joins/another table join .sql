select *from employee;

create table department
(
dept_no number(5),
dept_name varchar2(50),
location varchar2(30)
);
insert into department(dept_no,dept_name,location)
VALUES(10,'marketing','location1');
insert into department
values(20,'sales','location2');
insert into department
values(30,'operator','location3');
insert into department
values(40,'hr','location4');
insert into department
values(50,'stack','location5');

select*from department;

create table location(
location_no varchar2(5),
location_name varchar2(50),
country varchar2(25)
);
insert into location(location_no,location_name,country)
values(1,'chennai','India');
insert into location
values(2,'paries','france');
insert into location 
values(3,'hyderbad','India');
insert into location
values(4,'melbourne','Australia');

-----describe table------------------
desc department;
desc employee;

select*from employee;
select*from department;
-------------alter used for column name change------------------
alter table department rename column dept_no to deptno;
commit;
