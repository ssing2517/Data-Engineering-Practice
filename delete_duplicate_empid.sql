with cte as (SELECT * , ROW_NUMBER() over(partition by employeeid ORDER by employeeid) as rn 
from employee) 
select * from cte
delete from cte where rn>1
