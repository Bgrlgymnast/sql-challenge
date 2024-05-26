--Drop table if exists
drop table if exists titles;
drop table if exists departments;
drop table if exists dept_emp;
drop table if exists dept_manager;
drop table if exists employees;
drop table if exists salaries;

--Creating Tables

create table departments (
dept_no varchar primary key not null,
dept_name varchar not null
);

create table titles (
title_id varchar primary key not null, 
title varchar not null
);

create table employees (
emp_no int primary key not null,
emp_title_id varchar not null,
birth_date date not null,
first_name varchar not null,
last_name varchar not null,
sex varchar not null,
hire_date date not null,
foreign key (emp_title_id) references titles(title_id)
);

create table salaries (
emp_no int primary key not null,
salary int not null,
foreign key (emp_no) references employees(emp_no)
);

create  table dept_emp (
emp_no int not null, 
dept_no varchar not null,
foreign key (emp_no) references employees(emp_no),
foreign key (dept_no) references departments(dept_no)
);

create table dept_manager (
dept_no varchar not null,
emp_no int primary key not null,
foreign key (dept_no) references departments(dept_no),
foreign key (emp_no) references employees(emp_no)
);

-- checking to see if imports worked
select *
from departments d

select *
from titles t;

select *
from employees e;

select *
from dept_emp de;

select *
from dept_manager dm;

select *
from salaries s;

