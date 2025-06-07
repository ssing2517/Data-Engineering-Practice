
-- to find the 3rd highest salary in each department on basis on current employee rating 

--dense rank()

with cte as(
  select EmpID,FirstName,dense_rank() over (partition by DepartmentType order by "current employee rating") as dr from Employee)
select * from cte where dr =3

--rank()
with cte as(
  select EmpID,FirstName,rank() over (partition by DepartmentType order by "current employee rating") as dr from Employee)
select * from cte where dr =3

--row_number()
with cte as(
  select EmpID,FirstName,row_number() over (partition by DepartmentType order by "current employee rating") as dr from Employee)
select * from cte where dr =3
