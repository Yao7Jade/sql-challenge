


#1
select e.emp_no,first_name , last_name,sex ,s.salary
from employees e, salaries s
where e.emp_no = s.emp_no ;





#2
select first_name, last_name,hire_date  from employees
where hire_date >= '1986-01-01' and hire_date < '1987-01-01';


select first_name, last_name,hire_date  from employees
where extract(year from hire_date ) = 1986;


#3

select d.dept_no, d.dept_name,
e.emp_no, e.first_name, e.last_name
from employees e, dept_manager dm, departments d
where e.emp_no = dm.emp_no and dm.dept_no = d.dept_no ;


#4
select de.emp_no,e.emp_no, e.last_name,
e.first_name,d.dept_name
from employees e
join dept_emp de on e.emp_no = de.emp_no
join departments d on d.dept_no = de.dept_no;


select de.emp_no,e.emp_no, e.last_name,
e.first_name,d.dept_name
from employees e,dept_emp de,departments d
where e.emp_no = de.emp_no
and d.dept_no = de.dept_no;

#5
select first_name,last_name,sex from employees
where first_name = 'Hercules' and last_name like 'B%'


#6
select e.emp_no, e.last_name,
e.first_name,d.dept_name
from employees e
join dept_emp de on e.emp_no = de.emp_no
join departments d on d.dept_no = de.dept_no
where d.dept_name ='Sales';

#7
select e.emp_no, e.last_name,
e.first_name,d.dept_name
from employees e
join dept_emp de on e.emp_no = de.emp_no
join departments d on d.dept_no = de.dept_no
where d.dept_name in ('Sales','Development');

#8
select count(last_name) as number,last_name
from employees
group by last_name
order by number desc;

