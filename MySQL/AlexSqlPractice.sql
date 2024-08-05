select * from employee_details;
select * from employee_salary;
select * from parks_departments;

select gender, avg(age) from employee_details
group by gender;
select first_name, last_name from employee_details
order by first_name;

select det.first_name, det.last_name, birth_date, occupation, salary 
from employee_details as det
join employee_salary sal
on det.employee_id=sal.employee_id;

select upper(first_name) first_name, upper(last_name) last_name
from employee_salary;

select first_name, last_name, substring(birth_date, 6, 2) birth_month
from employee_details;

select gender, avg(salary) from employee_details det
join employee_salary sal 
on det.employee_id=sal.employee_id
group by gender;

select det.first_name, salary
from employee_details det
join employee_salary sal 
on det.employee_id=sal.employee_id;

with cte_example as
(
select gender, avg(salary) avg_sal, max(salary) max_sal, min(salary) min_sal, count(salary) count_sal
from employee_details det
join employee_salary sal 
on det.employee_id=sal.employee_id
group by gender
)
select avg(avg_sal) from cte_example;  

with cte_example as
(
select gender, salary
from employee_details det
join employee_salary sal 
on det.employee_id=sal.employee_id
)
select avg(salary) from cte_example;

with ex1 as(
select employee_id, first_name, birth_date
from employee_details where birth_date > '1985-01-01'),
ex2 as(
select employee_id, first_name, salary
from employee_salary where salary > 50000)
select ex1.employee_id, ex1.first_name, birth_date, salary from ex1 join ex2
on ex1.employee_id=ex2.employee_id;

with cte_example (gender, avg_sal, max_sal, min_sal, count_sal) as
(
select gender, avg(salary), max(salary), min(salary), count(salary)
from employee_details det
join employee_salary sal 
on det.employee_id=sal.employee_id
group by gender
)
select * from cte_example;

create temporary table temp_table1
(first_name varchar(50), last_name varchar(50), favorite_movie varchar(100));
insert into temp_table1 values
('Yashvi', 'Mudgal', 'Inside Out');
select * from temp_table1;

create temporary table temp_table2
select * from employee_details
where birth_date >= '1985-01-01';
select * from temp_table2;

call new_procedure;

create procedure large_salaries1(para_employee_id int)
select salary from employee_salary
where salary >= 50000 and
employee_id=para_employee_id;
call large_salaries1(1);

delimiter $$
create trigger employee_insert
after insert on employee_salary
for each row
begin
insert into employee_details (employee_id, first_name, last_name) values
(new.employee_id, new.first_name, new.last_name);
end $$
delimiter ;
insert into employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id) values
(13, 'Jean-Ralphino', 'Saperstein', 'Entertainment 720 CEO', 100000, NULL);
select * from employee_salary;
select * from employee_details;

delimiter $$
create event delete_retirees
on schedule every 1 year
do
begin
delete from employee_details where age > 60;
end $$
delimiter ;
select * from employee_details;
show variables like 'event%';
insert into employee_details (employee_id, first_name, last_name, age, gender, birth_date) values
(5,	'Jerry', 'Gergich', 61, 'Male', '1962-08-28');
select * from employee_details;
