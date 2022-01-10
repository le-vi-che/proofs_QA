--1. Создать таблицу employees
create table  employees(
	id serial primary key,
	employee_name varchar(50) not null);

--2. Наполнить таблицу employee 70 строками.

insert into employees(employee_name)
values ('jhon'),
('lennon'),
('paul'),
('mccartny'),
('george'),
('harrison'),
('ringo'),
('star'),
('anukov'),
('arifulin'),
('arshavin'),
('afanasiev'),
('ahmetov'),
('bakaev'),
('barinov'),
('baharev'),
('bezrodnii'),
('belaev'),
('berezkin'),
('berezutskii'),
('mihailov'), 
('moroz'),
('muserskii'),
('obmoch'),
('olihver'),
('orlenko'),
('ostapenko'),
('pavlov'),
('pankov'),
('podlesnih'),
('poletaev'),
('poltava'),
('rodichev'),
('saveliev'),
('savin'),
('samsonov'),
('semashev'),
('sivojelez'),
('sidelnikov'),
('sidenko'),
('smolar'),
('sogrin'),
('sokolov'),
('spiridonov'),
('stepanan'),
('sumrachevskii'),
('tereshin'),
('tetuhin'),
('tetuhov'), 
('ursov'),
('ushakov'),
('feoktistov'),
('filippov'),
('fomin'),
('rolf'),
('ringer'),
('htey'),
('chered'),
('cherem'),
('chefren'),
('chigrin'),
('shatun'),
('shevchenko'),
('shishkin'),
('shkul'),
('shulepov'),
('scherbin'),
('yakovlev'),
('yakovlenko'),
('yanutov'),
('yaremenko');

select * from employees;

--3. Создать таблицу salary

create table salary(
	id serial primary key,
	monthly_salary int not null);

select * from salary;

--4. Наполнить таблицу salary 16 строками: от 1000 до 2500

insert into salary(monthly_salary)
values (1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

--5. Создать таблицу employee_salary ( id. Serial primary key, employee_id. Int, not null, unique, salary_id. Int, not null)

create table employee_salary (
	id serial primary key,
	id_employee int not null,
	id_salary int not null
		);

	select * from employee_salary;

--6. Наполнить таблицу employee_salary 40 строками: в 10 строк из 40 вставить несуществующие id_employee

insert into employee_salary (id_employee, id_salary)
values (1, 11),
(25, 1),
(36, 4),
(47, 16),
(13, 13),
(55, 9),
(69, 2),
(8, 10),
(14, 8),
(29, 3),
(31, 15),
(42, 5),
(58, 14),
(63, 6),
(5, 12),
(17, 7),
(20, 1),
(38, 2),
(44, 3),
(50, 4),
(66, 5),
(2, 6),
(10, 7),
(21, 8),
(30, 9),
(41, 10),
(52, 11),
(60, 12),
(70, 13),
(3, 14),
(71, 15),
(72, 16),
(73, 1),
(74, 1),
(75, 2),
(76, 3),
(77, 4),
(78, 5),
(79, 1),
(80, 7);

select * from employee_salary;

--7. Создать таблицу roles

create table roles(
id serial primary key,
role_name int not null unique
);

select * from roles;

--8. Поменять тип столба role_name с int на varchar(80)
alter table roles
alter column role_name type varchar(80) using role_name::varchar(80);

select * from roles;

--9. Наполнить таблицу roles 20 строками:

insert into roles(role_name)
values  ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
	
select * from roles;

--10. Создать таблицу roles_employee : 
-- id. Serial  primary key, id_employee. Int, not null, unique (внешний ключ для таблицы employees, поле id),
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id))
	
create table roles_employees(
id serial primary key,
id_employee int not null unique,
roles_id int not null,
foreign key (id_employee)
	references employees (id),
foreign key (roles_id)
	references roles (id)
);

 select * from roles_employees;

--11. Наполнить таблицу roles_employee 40 строками

insert into roles_employees (id_employee,roles_id)
values  (1, 20),
		(2, 19),
		(3, 18),
		(4, 17),
		(5, 16),
		(6, 15),
		(7, 14),
		(8, 13),
		(9, 12),
		(10, 11),
		(11, 10),
		(12, 9),
		(13, 8),
		(14, 7),
		(15, 6),
		(16, 5),
		(17, 4),
		(18, 3),
		(19, 2),
		(20, 1),
		(21, 20),
		(22, 19),
		(23, 18),
		(24, 17),
		(25, 16),
		(26, 15),
		(27, 14),
		(28, 13),
		(29, 12),
		(30, 11),
		(31, 10),
		(32, 9),
		(33, 8),
		(34, 7),
		(35, 6),
		(36, 5),
		(37, 4),
		(38, 3),
		(39, 2),
		(40, 1);

select * from roles_employees;
