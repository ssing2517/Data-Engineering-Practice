--Union all combines 2 tables and results all the records from both the table

select * from employee_1
union all
SELECT * from employee;

--Union removes the duplicates
select * from employee_1
union
SELECT * from employee;
