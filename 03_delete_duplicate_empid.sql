with cte as (SELECT * , ROW_NUMBER() over(partition by employeeid ORDER by employeeid) as rn 
from employee) 
select * from cte
delete from cte where rn>1

-- In postgres this will not work so below code is for postgresql-
DELETE FROM employee 
WHERE employeeid IN (
    SELECT employeeid FROM (
        SELECT employeeid, ROW_NUMBER() OVER (PARTITION BY employeeid ORDER BY employeeid) AS rn 
        FROM employee
    ) subquery 
    WHERE rn > 1
);

-- In PostgreSQL, Common Table Expressions (CTEs) are temporary result sets,
-- meaning they don’t actually store data like regular tables. When you define a CTE using WITH cte AS (...), 
-- it acts more like a derived table or subquery, and does not directly reference an underlying physical table.
-- Why Does DELETE Fail?
-- CTEs Are Not Updatable – Since cte is not a real table, PostgreSQL does not allow direct modifications like DELETE or UPDATE on it.

-- No Direct Link to the Base Table – Your CTE (cte) only exists for the duration of the query, and deleting from it does not affect
-- the actual employee table.

-- Workaround Needed for Modifications – You need to delete directly from the original table (employee), using a subquery or a modifiable CTE.
