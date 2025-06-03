--Employees that are not present in dept_table
select * from employee where department not in (select "DP_NAME" from department)

select employee.employeeid,department."DP_NAME" from employee
left join department 
on department ="DP_NAME"
WHERE department."DP_NAME" is null

-- Both **subqueries** and **joins** have their place in SQL optimization, and choosing the right one depends on the specific scenario.

### **Performance Comparison**
| Feature      | Joins | Subqueries |
|-------------|-------|------------|
| **Speed**   | Faster (especially on large datasets) | Can be slower due to multiple query executions |
| **Readability** | More complex but scalable | Simpler for one-off lookups |
| **Index Utilization** | Uses indexes efficiently | May not always leverage indexes well |
| **Memory Usage** | Optimized in query execution | Might use temporary tables, affecting performance |
| **Nested Queries** | Avoids unnecessary nesting | Can lead to performance issues if overused |

### **When to Use Joins?**
- When working with large datasets and need efficient data retrieval.
- When filtering data across multiple tables without repeated execution.
- When leveraging indexes for faster searches.

### **When to Use Subqueries?**
- When needing a quick lookup without complex relationships.
- When filtering data at a higher level before joining.
- When simplifying readability for simple aggregations.

### **Best Practice**
For **performance**, **joins** are generally preferred over **subqueries**, especially in large datasets. However, **subqueries** can be useful for readability in small cases.
