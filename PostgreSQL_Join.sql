select * from employees;
select * from salary;
select * from employee_salary;
select * from roles;
select * from roles_employees;

 --1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary 
from employee_salary
join employees on id_employee = employees.id
join salary on id_salary = salary.id; 

 -- 2. ������� ���� ���������� � ������� �� ������ 2000
 select employee_name, monthly_salary
 from employee_salary
 join employees on id_employee = employees.id 
 join salary on id_salary = salary.id 
 where monthly_salary < 2000;
 
-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select E.employee_name, salary.monthly_salary 
from employee_salary
right join employees E on id_employee = E.id 
join salary on id_salary = salary.id
where employee_name = null

 --4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
 select employee_name, monthly_salary
 from employee_salary
 join employees on id_employee = employees.id
 right join salary on id_salary = salary.id 
 where monthly_salary < 2000
 and employee_name is null
 
 --5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name, id_salary from employees
left join employee_salary on employees.id = id_employee 
where id_salary is null;
 
 --6. ������� ���� ���������� � ���������� �� ���������.
 select employee_name, role_name from employees 
 join roles_employees on employees.id = roles_employees.id_employee
 join roles on roles.id = roles_employees.roles_id;
 
 --7. ������� ����� � ��������� ������ Java �������������.
 select employee_name, role_name from employees 
 join roles_employees on employees.id = roles_employees.id_employee 
 join roles on roles.id = roles_employees.roles_id
 where role_name like '%Java Developer';
 
 --8. ������� ����� � ��������� ������ Python �������������.
 select employee_name, role_name from employees 
 join roles_employees on employees.id = roles_employees.id_employee 
 join roles on roles.id = roles_employees.roles_id 
 where role_name like '%Python%';
 
 --9. ������� ����� � ��������� ���� QA ���������.
 select employee_name, role_name from employees  
 join roles_employees on employees.id = roles_employees.id_employee 
 join roles on roles.id = roles_employees.roles_id 
 where role_name like '%QA%'
 
 -- 10. ������� ����� � ��������� ������ QA ���������.
 select employee_name, role_name from employees 
 join roles_employees on employees.id = roles_employees.id_employee
 join roles on roles.id = roles_employees.roles_id 
 where role_name like '%Manual QA%';
 
 --11. ������� ����� � ��������� ��������������� QA
 select employee_name, role_name from employees 
 join roles_employees on employees.id = roles_employees.id_employee 
 join roles on roles.id = roles_employees.roles_id 
 where role_name like '%Automation QA%';
 
 --12. ������� ����� � �������� Junior ������������
 select employee_name, monthly_salary, role_name from employees 
 left join employee_salary on employees.id = employee_salary.id_employee 
 left join salary on salary.id = employee_salary.id_salary
 left join roles_employees on employees.id = roles_employees.id_employee 
 left join roles on roles.id = roles_employees.roles_id
 where role_name like '%Junior%'
 
 --13. ������� ����� � �������� Middle ������������
  select employee_name, monthly_salary, role_name from employees 
 left join employee_salary on employees.id = employee_salary.id_employee 
 left join salary on salary.id = employee_salary.id_salary
 left join roles_employees on employees.id = roles_employees.id_employee 
 left join roles on roles.id = roles_employees.roles_id
 where role_name like '%Middle%'
 
 --14. ������� ����� � �������� Senior ������������
 select employee_name, monthly_salary, role_name from employees 
 left join employee_salary on employees.id = employee_salary.id_employee 
 left join salary on salary.id = employee_salary.id_salary
 left join roles_employees on employees.id = roles_employees.id_employee 
 left join roles on roles.id = roles_employees.roles_id
 where role_name like '%Senior%'
 
 --15. ������� �������� Java �������������
 select  monthly_salary, role_name from employees 
 full join employee_salary on employees.id = employee_salary.id_employee 
 full join salary on salary.id = employee_salary.id_salary
 full join roles_employees on employees.id = roles_employees.id_employee 
 full join roles on roles.id = roles_employees.roles_id
 where role_name like '%Java Developer'
 
 --16. ������� �������� Python �������������
 select  monthly_salary, role_name from employees 
 full join employee_salary on employees.id = employee_salary.id_employee 
 full join salary on salary.id = employee_salary.id_salary
 full join roles_employees on employees.id = roles_employees.id_employee 
 full join roles on roles.id = roles_employees.roles_id
 where role_name like '%Python%'
 
 --17. ������� ����� � �������� Junior Python �������������
 select employee_name, monthly_salary, role_name from employees 
 left join employee_salary on employees.id = employee_salary.id_employee 
 left join salary on salary.id = employee_salary.id_salary
 left join roles_employees on employees.id = roles_employees.id_employee 
 left join roles on roles.id = roles_employees.roles_id
 where role_name like '%Junior Python%'
 
 --18. ������� ����� � �������� Middle JS �������������
 select employee_name, monthly_salary, role_name from employees 
 left join employee_salary on employees.id = employee_salary.id_employee 
 left join salary on salary.id = employee_salary.id_salary
 left join roles_employees on employees.id = roles_employees.id_employee 
 left join roles on roles.id = roles_employees.roles_id
 where role_name like '%Middle JavaScript%'
 
 --19. ������� ����� � �������� Senior Java �������������
 select employee_name, monthly_salary, role_name from employees 
 left join employee_salary on employees.id = employee_salary.id_employee 
 left join salary on salary.id = employee_salary.id_salary
 left join roles_employees on employees.id = roles_employees.id_employee 
 left join roles on roles.id = roles_employees.roles_id
 where role_name like '%Senior Java Developer'
 
 --20. ������� �������� Junior QA ���������
 select monthly_salary from employees 
 full join employee_salary on employees.id = employee_salary.id_employee 
 full join salary on salary.id = employee_salary.id_salary
 full join roles_employees on employees.id = roles_employees.id_employee 
 full join roles on roles.id = roles_employees.roles_id
 where role_name like '%Junior%QA%'
  
 --21. ������� ������� �������� ���� Junior �����������
 select avg(monthly_salary) from employees 
 join employee_salary on employees.id = employee_salary.id_employee 
 join salary on salary.id = employee_salary.id_salary
 join roles_employees on employees.id = roles_employees.id_employee 
 join roles on roles.id = roles_employees.roles_id
 where role_name like '%Junior%';
 
 --22. ������� ����� ������� JS �������������
 select sum(monthly_salary) from employees 
 join employee_salary on employees.id = employee_salary.id_employee 
 join salary on salary.id = employee_salary.id_salary
 join roles_employees on employees.id = roles_employees.id_employee 
 join roles on roles.id = roles_employees.roles_id
 where role_name like '%JavaScript%';
 
-- 23. ������� ����������� �� QA ���������
 select min(monthly_salary) from employees 
 join employee_salary on employees.id = employee_salary.id_employee 
 join salary on salary.id = employee_salary.id_salary
 join roles_employees on employees.id = roles_employees.id_employee 
 join roles on roles.id = roles_employees.roles_id
 where role_name like '%QA%';
 
 --24. ������� ������������ �� QA ���������
 select max(monthly_salary) from employees 
 join employee_salary on employees.id = employee_salary.id_employee 
 join salary on salary.id = employee_salary.id_salary
 join roles_employees on employees.id = roles_employees.id_employee 
 join roles on roles.id = roles_employees.roles_id
 where role_name like '%QA%';

 --25. ������� ���������� QA ���������
 select count(role_name) from employees 
 join roles_employees on employees.id = roles_employees.id_employee 
 join roles on roles.id = roles_employees.roles_id
 where role_name like '%QA%';
 
-- 26. ������� ���������� Middle ������������.
 select count(role_name) from employees 
 join roles_employees on employees.id = roles_employees.id_employee 
 join roles on roles.id = roles_employees.roles_id
 where role_name like '%Middle%';
 
 --27. ������� ���������� �������������
 select count(role_name) from employees 
 join roles_employees on employees.id = roles_employees.id_employee 
 join roles on roles.id = roles_employees.roles_id
 where role_name like '%developer%';
 
 --28. ������� ���� (�����) �������� �������������.
 select sum(monthly_salary) from employees 
 join employee_salary on employees.id = employee_salary.id_employee 
 join salary on salary.id = employee_salary.id_salary
 join roles_employees on employees.id = roles_employees.id_employee 
 join roles on roles.id = roles_employees.roles_id
 where role_name like '%developer%'
 
-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
 select employee_name, role_name, monthly_salary from employees 
 left join employee_salary on employees.id = employee_salary.id_employee 
 left join salary on salary.id = employee_salary.id_salary
 left join roles_employees on employees.id = roles_employees.id_employee 
 left join roles on roles.id = roles_employees.roles_id
 order by monthly_salary
 
 --30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
 select employee_name, role_name, monthly_salary from employees 
 left join employee_salary on employees.id = employee_salary.id_employee 
 left join salary on salary.id = employee_salary.id_salary
 left join roles_employees on employees.id = roles_employees.id_employee 
 join roles on roles.id = roles_employees.roles_id
 left where monthly_salary between 1700 and 2300
 order by monthly_salary
 
 --31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
 select employee_name, role_name, monthly_salary from employees 
 left join employee_salary on employees.id = employee_salary.id_employee 
 left join salary on salary.id = employee_salary.id_salary
 left join roles_employees on employees.id = roles_employees.id_employee 
 left join roles on roles.id = roles_employees.roles_id
 where monthly_salary < 2300
 order by monthly_salary
 
-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
  select employee_name, role_name, monthly_salary from employees 
 left join employee_salary on employees.id = employee_salary.id_employee 
 left join salary on salary.id = employee_salary.id_salary
 left join roles_employees on employees.id = roles_employees.id_employee 
 left join roles on roles.id = roles_employees.roles_id
 where monthly_salary in (1100, 1500, 2000)
 order by monthly_salary
