create table employee_details (
employee_id int not null,
first_name varchar(50),
last_name varchar(50),
age int,
gender varchar(10),
birth_date date,
primary key(employee_id)
);

create table employee_salary (
employee_id int not null,
first_name varchar(50) not null,
last_name varchar(50) not null,
occupation varchar(50),
salary int,
department_id int
);

insert into employee_details (employee_id, first_name, last_name, age, gender, birth_date)
values
(1, 'John', 'Doe', 34, 'Male', '1990-08-23'),
(2, 'Abraham', 'Linkon', 39, 'Male', '1985-01-01'),
(3, 'Anna', 'Clark', 33, 'Female', '1991-08-23'),
(4, 'John', 'Bezoz', 36, 'Male', '1988-08-23'),
(5, 'Suzan', 'Neil', 34, 'Female', '1990-11-12'),
(6, 'Ben', 'Danial', 38, 'Male', '1986-12-03'),
(7, 'Zafar', 'Khan', 45, 'Male', '1981-10-10'),
(8, 'Emma', 'Watson', 40, 'Female', '1984-07-21'),
(9, 'Danial', 'Hardy', 36, 'Male', '1988-06-29'),
(10, 'Suzanna', 'Neil', 34, 'Female', '1990-11-12');

insert into employee_salary (employee_id, first_name, last_name, occupation, salary, department_id)
values
(1, 'John', 'Doe', 'Director of Operations', 100000, 4),
(2, 'Abraham', 'Linkon', 'Director of Management', 100000, 5),
(3, 'Anna', 'Clark', 'Manager', 85000, 4),
(4, 'John', 'Bezoz', 'Accountant', 90000, 7),
(5, 'Suzan', 'Neil', 'Supervisor', 77000, 5),
(6, 'Ben', 'Danial', 'Manager', 85000, 7),
(7, 'Zafar', 'Khan', 'Designer', 50000, 6),
(8, 'Emma', 'Watson', 'Area Manager', 90000, 8),
(9, 'Danial', 'Hardy', 'Assistant', 33000, 8),
(10, 'Suzanna', 'Neil', 'CEO', 250000, 6);

create table department_details (
department_id int not null auto_increment,
department_name varchar(50) not null,
primary key(department_id)
);

insert into departments (department_id, department_name)
values
(4,'Operations'),
(5,'Management'),
(6,'Design'),
(7,'Finance'),
(8,'Field');

 