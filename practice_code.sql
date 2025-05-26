--Find duplicates in the Table based on employeeid:
select EmployeeID,count(1) from Employee
group by  EmployeeID
having count(1)>1;

--To delete the duplicates from the table:
