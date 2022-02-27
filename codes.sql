--Display the first name and join date of the employees who joined between 2002 to 2005.
select * from employees
where to_char(hire_date,'yyyy') between 2002 and 2005;

--30.	Display years in which more than 10 employees joined
select to_char(hire_date,'yyyy'),count(*)
from employees
group by to_char(hire_date,'yyyy')
having count(*)>10;

--Display department ID, year, and Number of employees joined.
select department_id,to_char(hire_date,'yyyy'),count(*)
from employees
group by department_id,to_char(hire_date,'yyyy');

--Display department_name and number of employees working in it.
select department_name,count(*)
from departments
group by department_name;

select * from employees
where commission_pct is null
and
salary between 5000 and 10000
and
department_id=30;


select * from
(select dense_rank() over(order by salary desc) as rk,e.* from employees e)
where rk=1; 


select * from
(select * from
(select rownum as rk,e.* from employees e order by employee_id)
where rk<=5
union 
select * from
(select rownum as rk,e.* from employees e order by employee_id desc)
where rk<=5)
order by employee_id;

select distinct city from locations
where (city like 'a%' or city like 'e%' or city like 'i%' or city like 'o%' or city like 'u%')
and
(city like '%a' or city like '%e' or city like '%i' or  city like '%o' or city like '%u');

select first_name from employees
where first_name like ('%a%a%');

select first_name,length(first_name) - length(replace(first_name,'a','')) as sd
from employees;

--Display the first name and join date of the employees who joined between 2002 to 2005.
select * from employees
where to_char(hire_date,'yyyy') between 2002 and 2005;

--30.	Display years in which more than 10 employees joined
select to_char(hire_date,'yyyy'),count(*)
from employees
group by to_char(hire_date,'yyyy')
having count(*)>10;

--Display department ID, year, and Number of employees joined.
select department_id,to_char(hire_date,'yyyy'),count(*)
from employees
group by department_id,to_char(hire_date,'yyyy');

--Display department_name and number of employees working in it.
select department_name,count(*)
from departments
group by department_name;

select * from employees
where commission_pct is null
and
salary between 5000 and 10000
and
department_id=30;


select * from
(select dense_rank() over(order by salary desc) as rk,e.* from employees e)
where rk=1; 


select * from
(select * from
(select rownum as rk,e.* from employees e order by employee_id)
where rk<=5
union 
select * from
(select rownum as rk,e.* from employees e order by employee_id desc)
where rk<=5)
order by employee_id;

select distinct city from locations
where (city like 'a%' or city like 'e%' or city like 'i%' or city like 'o%' or city like 'u%')
and
(city like '%a' or city like '%e' or city like '%i' or  city like '%o' or city like '%u');

select first_name from employees
where first_name like ('%a%a%');

select first_name,length(first_name) - length(replace(first_name,'a','')) as sd
from employees;
