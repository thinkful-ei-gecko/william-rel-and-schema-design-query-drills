select d.dept_name as Department, count(e.id) as Employees
from 
	employee e
	join 
	department d
	on 
	e.department = d.id
where dept_name = 'Sales'
group by dept_name;

-- There are 4 employees in Sales

select p.project_name as Project, e.emp_name as Full_Name
from
	employee e
	join
	employee_project ep
	on e.id = ep.emp_id
	join project p
	on ep.project_id = p.id
where p.project_name = 'Plan christmas party';

--Toby Flenderson is only employee working on this project

select e.emp_name as Full_Name, d.dept_name as Department, p.project_name as Project
from
	department d
	join
	employee e
	on e.department = d.id
	join 
	employee_project ep
	on e.id = ep.emp_id
	join
	project p
	on ep.project_id = p.id
where d.dept_name = 'Warehouse' and p.project_name = 'Watch paint dry';

--There are 0 employees that are working on project that are in Warehouse department

select p.project_name as Project, d.dept_name as Department, e.emp_name as Full_Name
from
	department d
	join
	employee e
	on e.department = d.id
	join 
	employee_project ep
	on e.id = ep.emp_id
	join
	project p
	on ep.project_id = p.id
where d.dept_name = 'Sales';

--All employees in Sales dept. are on the project 'Watch paint dry'

select p.project_name as Project, e.emp_name as Manager
from
	project p
	join
	employee_project ep
	on p.id = ep.project_id
	join employee e
	on e.id = ep.emp_id
	join department d
	on e.id = d.manager
where p.project_name = 'Watch paint dry';

--Jim Halpert is the manager that is assigned to project