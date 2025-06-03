-- Function	Behavior &	How It Handles Ties
-- RANK(): Assigns a rank to each row
-- Skips ranks when there are duplicates
-- DENSE_RANK(): Assigns a rank to each row
-- Does NOT skip ranks when there are duplicates

select *,ROW_NUMBER() over( order by salary DESC) as rn,
RANK() over( order by salary DESC) as rnk ,
DENSE_RANK() over( order by salary DESC) as d_rnk 
from employee


-- Highest salary in each department
select *,ROW_NUMBER() over( partition by department order by salary DESC) as rn,
RANK() over( partition by department order by salary DESC) as rnk ,
DENSE_RANK() over( partition by department order by salary DESC) as d_rnk 
from employee

--2nd highest salary in each department
select * from (select *,DENSE_RANK() over(partition by department order by salary desc) as rnk from employee) 
where rnk=2


