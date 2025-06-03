--Employee salary more than manager's salary:
select e.employeename,e.employeeid,e.salary as emp_salary,m.employeename as mgr_name,m.salary as mgr_salary from employee e
inner join employee m
on e.managerid=m.employeeid
where e.salary>m.salary
